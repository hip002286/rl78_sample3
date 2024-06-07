#ifndef _LED_SW_H_
#define _LED_SW_H_

#define LED_SWITCH(a_in, b_in, c_in, d_in, e_in, f_in, g_in, h_in, A_out, B_out, C_out)			\
{													\
	{												\
		UCHAR Excess;										\
		UCHAR Out;										\
													\
		Excess = led_sw_excess(a_in, b_in, c_in, d_in, e_in, f_in, g_in, h_in);			\
		Out = led_sw_out(Excess);								\
													\
		A_out = Out & 0x01;									\
		B_out = (Out>>1) & 0x01;								\
		C_out = (Out>>2) & 0x01;								\
	}												\
}													

UCHAR	led_sw_excess(UCHAR a_in, UCHAR b_in, UCHAR c_in, UCHAR d_in, UCHAR e_in, UCHAR f_in, UCHAR g_in, UCHAR h_in);
UCHAR	led_sw_out(UCHAR excess);

#endif