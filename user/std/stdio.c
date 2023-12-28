#include "syscall.h"
#include "stdio.h"

void printf(char * format,...){
	va_list va;
	va_start(va,&format);
	vsprintf(str_buff,format,va);
	syscall1(SYS_WRITE,str_buff);
}

//将格式串修正为要输出的字符串，并保存到str_buff中
size_t vsprintf(char * str_buff,char *format,va_list va)
{
	while( *format != '\0')
	{
		if(*format == '%')
		{
			++format;
			//根据格式化字符替换字符串
			switch(*format)
			{
			case 'x':
			{
				hex_to_ascii(&str_buff,*va_next(va));
				break;	
			}
			case 'd':
			{
				dec_to_ascii(&str_buff,*va_next(va));
				break;
			}
			case 'u':
			{
				unsign_to_ascii(&str_buff,*va_next(va));
				break;
			}
			case 's':
			{
				//由于最终要合并成一个字符串，所以需要舍弃结束字符
				char * str = *va_next(va);
				while(*str != '\0') *(str_buff++) = *(str++); 
				break;
			}
			case 'c':
			{
				*(str_buff++) = (char)*va_next(va);
				break;
			}
			default:break;
			}
			++format;
			continue;	
		}
		*str_buff = *format;
		++str_buff,++format;
	}
	*str_buff = '\0';
}


//有符号16进制转化
void hex_to_ascii(char * *str,uint_32 h)
{
	if(!h) {
		*((*str)++) = '0';
		return;
	}
	if(h & NEG) {
		*((*str)++)  = '-';
		h &= 0x7fffffff;
	}
	uint_32 magn = 0xffffffff;
	//调整数量级
	while (h < magn) magn = magn >> 4;
	char res;
	while(magn > 0){
		res = h / (magn + 1);
		if(res < 10)	*((*str)++) = res + '0';
		else *((*str)++) = 'a' + res -10;
		h = h%(magn+1);
		magn = magn >> 4;
	}
	if(h < 10)*((*str)++) = h + '0';
	else *((*str)++) = 'a' + h -10;
}

//十进制转化，带符号
void dec_to_ascii(char * * str,uint_32 h)
{
	if(!h) {
		*((*str)++) = '0';
		return;
	}
	//判断符号，如果为负数就变为正数处理
	if(h & NEG){
	 	*((*str)++)  = '-';
	 	h = ~h + 1;
	 }
	 
	uint_32 magn = 1;
	while(h >= magn) magn *= 10;
	magn /= 10;
	char res;
	while(magn > 0)
	{
		res = (h / magn);
		*((*str)++) = res + '0';
		h %= magn;
		magn /= 10;	
	}
}

//无符号数转化，都是16进制
void unsign_to_ascii(char * * str,uint_32 h)
{
	if(!h) {
		*((*str)++) = '0';
		return;
	}
	//如果这种情况，除数会变为0，需要单独处理
	if(h == 0xffffffff)
	{
		*(uint_64 *)(*str) = 0x6666666666666666;
		(*str) = (char *)(*str) + 8;
		return;
	}
	uint_32 magn = 0xffffffff;
	//调整数量级
	while (h < magn) magn = magn >> 4;
	char res;
	while(magn > 0){
		res = h / (magn + 1);
		if(res < 10)	*((*str)++) = res + '0';
		else *((*str)++) = 'a' + res -10;
		h = h%(magn+1);
		magn = magn >> 4;
	}
	if(h < 10)*((*str)++) = h + '0';
	else *((*str)++) = 'a' + res -10;
}


