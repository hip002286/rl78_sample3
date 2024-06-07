#include "sfr.h"
#include "common.h"
#include "config.h"
#include "panel.h"
#include <stdio.h>

//extern UCHAR sum;
//extern UCHAR excess;

UCHAR led_sw_excess(UCHAR a_in, UCHAR b_in, UCHAR c_in, UCHAR d_in, UCHAR e_in, UCHAR f_in, UCHAR g_in, UCHAR h_in)
{
	
	UCHAR sw_num[8] = {0, 1, 2, 3, 4, 5, 6, 7};
	UCHAR sw_in[8] = {a_in, b_in, c_in, d_in, e_in, f_in, g_in, h_in};
	UCHAR i;
	UCHAR sum = 0;
	UCHAR excess = 0;
	
	for(i = 0; i < 8; i++)
	{
		if(sw_in[i] == 1)
		{
			sum = sum + sw_num[i];
		}
	}
	
	excess = sum % 4;
	return excess;
}

UCHAR led_sw_out(UCHAR excess)
{
	UCHAR out;
	
	switch(excess)
	{
		case 0:
			out = 0b00000000;
			return out;
		case 1:
			out = 0b00000001;
			return out;
		case 2:
			out = 0b00000010;
			return out;
		case 3:
			out = 0b00000100;
			return out;
		default:
			out = 0b00000000;
			return out;
	}
}