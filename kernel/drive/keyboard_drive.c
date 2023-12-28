#include "keyboard_map.h"
#include "port_io.h"
#include "data_type.h"
#include "debug.h"
#include "condition_var.h"

static char key_map[][2] = {
  {0,0},
  {esc,esc},
  {'1','!'}, 
  {'2','@'}, 
  {'3','#'}, 
  {'4','$'}, 
  {'5','%'}, 
  {'6','^'}, 
  {'7','&'}, 
  {'8','*'}, 
  {'9','('}, 
  {'0',')'}, 
  {'-','_'}, 
  {'=','+'},
  {backspace,backspace}, 
  {tab,tab},
  {'q','Q'}, 
  {'w','W'}, 
  {'e','E'}, 
  {'r','R'}, 
  {'t','T'}, 
  {'y','Y'}, 
  {'u','U'}, 
  {'i','I'}, 
  {'o','O'}, 
  {'p','P'}, 
  {'[','{'}, 
  {']','}'},
  {enter,enter},
  {ctrl_l_char,ctrl_l_char},
  {'a','A'}, 
  {'s','S'}, 
  {'d','D'}, 
  {'f','F'}, 
  {'g','G'}, 
  {'h','H'}, 
  {'j','J'}, 
  {'k','K'}, 
  {'l','L'}, 
  {';',':'}, 
  {'\'','"'}, 
  {'`','~'}, 
  {shift_l_char,shift_l_char},
  {'\\','|'}, 
  {'z','Z'}, 
  {'x','X'}, 
  {'c','C'}, 
  {'v','V'}, 
  {'b','B'}, 
  {'n','N'}, 
  {'m','M'}, 
  {',','<'}, 
  {'.','>'}, 
  {'/','?'},
  {shift_r_char,shift_r_char},
  {'*','*'},
  {alt_l_char,alt_l_char},
  {' ',' '},
  {caps_lock_char,caps_lock_char}
 };

static mutex __take_lock,__give_lock;
condition_var __buff_full,__buff_empty;
cir_queue __kb_buff;
bool ex_mkcode,last_shift,last_ctrl,last_alt,last_cap;
void init_keyboard(){
	ex_mkcode = false;
	last_shift = false;
	last_ctrl = false;
	last_alt = false;
	last_cap = false;
	init_cq(&__kb_buff);
	init_condition_var(&__buff_full,cq_full,(void *)&__kb_buff);
	init_condition_var(&__buff_empty,cq_empty,(void *)&__kb_buff);
	init_mutex(&__take_lock);
	init_mutex(&__give_lock);
	//生产者当前处理键盘中断的程序
	thread * consumer = thread_start("k consumer",8,take_char,0);
}

void keyboard_int_handle(){
	uint_16 data1 = read_port(KBDR);
	if(data1 == 0xe0){
		ex_mkcode = true;
		return;
	}
	if(ex_mkcode){
		data1 = 0xe000 || read_port(KBDR);
	}
	
	bool bkcode = ( (data1 &(0x0080)) != 0);
	//DEBUG_MSG("is bk?",bkcode);
	//如果是断码的话
	if(bkcode) {
		data1 -= 0x80;
		//将将特殊按键重置
		if(data1 == L_ALT || data1 == R_ALT) last_alt = false;
		else if(data1 == L_SHIFT || data1 == R_SHIFT) last_shift = false;
		else if(data1 == L_CTRL || data1 == R_CTRL) last_ctrl = false;
		//其他断码不做处理
		return;
	}
	
	//DEBUG_MSG("makecode:",data1);
	//DEBUG_MSG("ascii:",key_map[data1][0]);
	//处理特殊按键
	if(data1 == L_ALT || data1 == R_ALT) last_alt = true;
	else if(data1 == L_SHIFT || data1 == R_SHIFT) last_shift = true;
	else if(data1 == L_CTRL || data1 == R_CTRL) last_ctrl = true;
	else if(data1 == CAP) last_cap = !last_cap;
	else{
		ASSERT(key_map[data1]);
		bool letter = (data1 >= 0x10 && data1 <= 0x19) || (data1 >= 0x1d && data1 <= 0x25) \
		|| (data1 >= 0x2b && data1 <= 0x31);
		//处理字母，因为shift和cap的特殊组合，需要单独处理
		if(letter){
			if(last_shift && (!last_cap)) give_char(key_map[data1][1]);
			else if(last_shift && last_cap) give_char(key_map[data1][0]);
			else if(last_cap) give_char(key_map[data1][1]);
			else give_char(key_map[data1][0]);
			
		}
		else if(last_shift) give_char(key_map[data1][1]);
		else give_char(key_map[data1][0]);
	}
}

void give_char(char c){
	lock(&__give_lock);
	conditional_block(&__buff_full);
	cq_push(&__kb_buff,c);
	conditional_notify(&__buff_empty);
	unlock(&__give_lock);
}

void take_char(){
	while(1){
		lock(&__take_lock);
		conditional_block(&__buff_empty);
		console_put_char(cq_pop(&__kb_buff));
		conditional_notify(&__buff_full);
		unlock(&__take_lock);
	}
}






