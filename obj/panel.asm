#CC-RL Compiler RL78 Assembler Source
#@  CC-RL Version : V1.13.00  [30 Nov 2023]
#@  Commmand :
#@   -cpu=S3
#@   -obj_path=.\obj\
#@   -asm_path=.\obj\
#@   -dev=C:\Program Files (x86)\Renesas Electronics\Applilet EZ PL for RL78 V2.20\Tools\BIN\..\..\Tools\DEV\DR5F1058A.DVF
#@   -c
#@   -I C:\Program Files (x86)\Renesas Electronics\CS+\CC\CC-RL\V1.13.00\inc,.\include
#@   -Osize
#@   -pass_source
#@   src\panel.c
#@  compiled at Wed Apr 17 14:40:17 2024

	.EXTERN _fTrg10ms
	.PUBLIC _I_07
	.PUBLIC _I_09
	.PUBLIC _I_11
	.PUBLIC _I_13
	.PUBLIC _I_15
	.PUBLIC _I_17
	.PUBLIC _I_19
	.PUBLIC _I_21
	.PUBLIC _F1407
	.PUBLIC _F1409
	.PUBLIC _F1411
	.PUBLIC _panel_init0
	.EXTERN _DGIN_Initialize
	.EXTERN _DGIN_Counter
	.PUBLIC _panel
	.EXTERN _DGIN_Counter_Clear
	.EXTERN _DGIN_getValue
	.EXTERN _DGOUT_setValue

	.SECTION .textf,TEXTF
	.TYPE _panel_init0,function,.LFE1-_panel_init0
_panel_init0:
	.STACK _panel_init0 = 4
	;***        1 : /*******************************************************************************
	;***        2 : * DISCLAIMER
	;***        3 : * This software is supplied by Renesas Electronics Corporation and is only
	;***        4 : * intended for use with Renesas products. No other uses are authorized. This
	;***        5 : * software is owned by Renesas Electronics Corporation and is protected under
	;***        6 : * all applicable laws, including copyright laws.
	;***        7 : * THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIES REGARDING
	;***        8 : * THIS SOFTWARE, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING BUT NOT
	;***        9 : * LIMITED TO WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
	;***       10 : * AND NON-INFRINGEMENT. ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED.
	;***       11 : * TO THE MAXIMUM EXTENT PERMITTED NOT PROHIBITED BY LAW, NEITHER RENESAS
	;***       12 : * ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES SHALL BE LIABLE
	;***       13 : * FOR ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR
	;***       14 : * ANY REASON RELATED TO THIS SOFTWARE, EVEN IF RENESAS OR ITS AFFILIATES HAVE
	;***       15 : * BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
	;***       16 : * Renesas reserves the right, without notice, to make changes to this software
	;***       17 : * and to discontinue the availability of this software. By using this software,
	;***       18 : * you agree to the additional terms and conditions found by accessing the
	;***       19 : * following link:
	;***       20 : * http://www.renesas.com/disclaimer
	;***       21 : *
	;***       22 : * Copyright (C) 2016 Renesas Electronics Corporation. All rights reserved.
	;***       23 : *******************************************************************************/
	;***       24 : 
	;***       25 : /*******************************************************************************
	;***       26 : * File Name    : panel.c
	;***       27 : * Version      : Applilet EZ PL for RL78
	;***       28 : * Device(s)    : R5F1056A,R5F1057A,R5F1058A
	;***       29 : * Tool-Chain   : CC-RL
	;***       30 : * Description  : This file implements main function.
	;***       31 : * Creation Date: 2016/09/14
	;***       32 : *******************************************************************************/
	;***       33 : 
	;***       34 : /*******************************************************************************
	;***       35 : Includes <System Includes> , "Project Includes"
	;***       36 : *******************************************************************************/
	;***       37 : #include "sfr.h"
	;***       38 : #include "common.h"
	;***       39 : #include "config.h"
	;***       40 : #include "panel.h"
	;***       41 : 
	;***       42 : /*******************************************************************************
	;***       43 : Exported global variables and functions (to be accessed by other files)
	;***       44 : *******************************************************************************/
	;***       45 : #if defined DTC_USED || defined STANDBY_USED
	;***       46 : #pragma address dtc_vectortable = VECTOR_ADDRESS
	;***       47 : UCHAR __near dtc_vectortable[40];
	;***       48 : #pragma address dtc_controldata = CONTROLDATA_ADDRESS
	;***       49 : ST_DTC_DATA __near dtc_controldata[24];
	;***       50 : #endif /*DTC_USED || STANDBY_USED*/
	;***       51 : /*--- Variable declaration ---*/
	;***       52 : 	UCHAR I_07;
	;***       53 : 	UCHAR I_09;
	;***       54 : 	UCHAR I_11;
	;***       55 : 	UCHAR I_13;
	;***       56 : 	UCHAR I_15;
	;***       57 : 	UCHAR I_17;
	;***       58 : 	UCHAR I_19;
	;***       59 : 	UCHAR I_21;
	;***       60 : 	UCHAR F1407 = 0;
	;***       61 : 	UCHAR F1409 = 0;
	;***       62 : 	UCHAR F1411 = 0;
	;***       63 : 
	;***       64 : /*----------------------------*/
	;***       65 : 
	;***       66 : void panel_init0(void)
	call $!__CommonCode@2
	;***       67 : {
	;***       68 : 
	;***       69 : 	DGIN_INIT0(0);
	;***       70 : 	DGIN_INIT0(0);
	;***       71 : 	DGIN_INIT0(0);
	;***       72 : 	DGIN_INIT0(0);
	call !!_DGIN_Counter
	call $!__CommonCode@2
	;***       73 : 	DGIN_INIT0(0);
	;***       74 : 	DGIN_INIT0(0);
	;***       75 : 	DGIN_INIT0(0);
	;***       76 : 	DGIN_INIT0(0);
	br !!_DGIN_Counter
.LFE1:
	.TYPE __CommonCode@2,function,.LFE2-__CommonCode@2
__CommonCode@2:
	.STACK __CommonCode@2 = 4
	call $!__CommonCode@3
	call !!_DGIN_Counter
.LFE2:
	.TYPE __CommonCode@3,function,.LFE3-__CommonCode@3
__CommonCode@3:
	.STACK __CommonCode@3 = 4
	clrb a
	call !!_DGIN_Initialize
	call !!_DGIN_Counter
	clrb a
	br !!_DGIN_Initialize
.LFE3:
	.TYPE _panel,function,.LFE4-_panel
_panel:
	.STACK _panel = 4
	;***       77 : }
	;***       78 : 
	;***       79 : void panel(void)
	;***       80 : {
	;***       81 : 	DGIN_INIT;
	call !!_DGIN_Counter_Clear
	;***       82 : 
	;***       83 : 	DGIN_PROC( I_07,20, LOW,10,fTrg10ms);
	mov c, _fTrg10ms
	movw ax, #0x1401
	call $!__CommonCode@0
	mov !LOWW(_I_07), a
	call $!__CommonCode@1
	;***       84 : 	DGIN_PROC( I_09,21, LOW,10,fTrg10ms);
	movw ax, #0x1501
	call $!__CommonCode@0
	mov !LOWW(_I_09), a
	call $!__CommonCode@1
	;***       85 : 	DGIN_PROC( I_11,22, LOW,10,fTrg10ms);
	movw ax, #0x1601
	call $!__CommonCode@0
	mov !LOWW(_I_11), a
	call $!__CommonCode@1
	;***       86 : 	DGIN_PROC( I_13,51, LOW,10,fTrg10ms);
	movw ax, #0x3301
	call $!__CommonCode@0
	mov !LOWW(_I_13), a
	call $!__CommonCode@1
	;***       87 : 	DGIN_PROC( I_15,52, LOW,10,fTrg10ms);
	movw ax, #0x3401
	call $!__CommonCode@0
	mov !LOWW(_I_15), a
	call $!__CommonCode@1
	;***       88 : 	DGIN_PROC( I_17,53, LOW,10,fTrg10ms);
	movw ax, #0x3501
	call $!__CommonCode@0
	mov !LOWW(_I_17), a
	call $!__CommonCode@1
	;***       89 : 	DGIN_PROC( I_19,54, LOW,10,fTrg10ms);
	movw ax, #0x3601
	call $!__CommonCode@0
	mov !LOWW(_I_19), a
	call $!__CommonCode@1
	;***       90 : 	DGIN_PROC( I_21,55, LOW,10,fTrg10ms);
	movw ax, #0x3701
	call $!__CommonCode@0
	mov !LOWW(_I_21), a
	call !!_DGIN_Counter
	;***       91 : 	DGOUT_PROC( 30, fOFF, LOW );
	clrb c
	movw ax, #0x1E00
	call !!_DGOUT_setValue
	;***       92 : 	DGOUT_PROC( 31, fOFF, LOW );
	clrb c
	movw ax, #0x1F00
	call !!_DGOUT_setValue
	;***       93 : 	DGOUT_PROC( 32, fOFF, LOW );
	clrb c
	movw ax, #0x2000
	br !!_DGOUT_setValue
.LFE4:
	.TYPE __CommonCode@1,function,.LFE5-__CommonCode@1
__CommonCode@1:
	.STACK __CommonCode@1 = 4
	call !!_DGIN_Counter
	mov c, _fTrg10ms
	ret
.LFE5:
	.TYPE __CommonCode@0,function,.LFE6-__CommonCode@0
__CommonCode@0:
	.STACK __CommonCode@0 = 4
	call !!_DGIN_getValue
	and a, #0x01
	xor a, #0x01
	ret
.LFE6:
	;***       94 : }
	.SECTION .bss,BSS
	.TYPE _I_07,object,1
_I_07:
	.DS (1)
	.TYPE _I_09,object,1
_I_09:
	.DS (1)
	.TYPE _I_11,object,1
_I_11:
	.DS (1)
	.TYPE _I_13,object,1
_I_13:
	.DS (1)
	.TYPE _I_15,object,1
_I_15:
	.DS (1)
	.TYPE _I_17,object,1
_I_17:
	.DS (1)
	.TYPE _I_19,object,1
_I_19:
	.DS (1)
	.TYPE _I_21,object,1
_I_21:
	.DS (1)
	.SECTION .data,DATA
	.TYPE _F1407,object,1
_F1407:
	.DS (1)
	.TYPE _F1409,object,1
_F1409:
	.DS (1)
	.TYPE _F1411,object,1
_F1411:
	.DS (1)
