#ifndef __KEYBOARD__MAP__H__
#define __KEYBOARD__MAP__H__
#define esc '\033'
#define backspace '\b'
#define tab '\t'
#define enter '\n'
#define delete '\177'

#define char_invisible 0
#define ctrl_l_char char_invisible
#define ctrl_r char_invisible
#define shift_l_char char_invisible
#define shift_r_char char_invisible
#define alt_l_char char_invisible
#define alt_r_char char_invisible
#define caps_lock_char char_invisible
#define ENTER 0x1c
#define L_SHIFT 0x2a
#define R_SHIFT 0x36
#define L_CTRL 0x1d
#define L_ALT 0x38
#define R_ALT 0xe038
#define R_CTRL 0xe01d
#define CAP 0x3a
#include "data_type.h"
#include "cir_queue.h"
#include "thread.h"
#define KBDR 0x60
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

void int_keyboard();
void keyboard_int_handle();
void give_char(char c);
void take_char();
#endif
