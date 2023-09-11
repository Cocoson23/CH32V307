/********************************** (C) COPYRIGHT *******************************
* File Name          : main.c
* Author             : WCH
* Version            : V1.0.0
* Date               : 2021/06/06
* Description        : Main program body.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/

/*
 *@Note
 USART Print debugging routine:
 USART1_Tx(PA9).
 This example demonstrates using USART1(PA9) as a print debug port output.

*/

#include "debug.h"
#include "oled.h"
#include "bmp.h"

/* Global typedef */

/* Global define */

/* Global Variable */

/*********************************************************************
 * @fn      main
 *
 * @brief   Main program.
 *
 * @return  none
 */
int main(void)
{
    u8 t = ' ';
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	SystemCoreClockUpdate();
	Delay_Init();
	USART_Printf_Init(115200);	
	printf("SystemClk:%d\r\n",SystemCoreClock);
	printf( "ChipID:%08x\r\n", DBGMCU_GetCHIPID() );
	printf("This is OLED example\r\n");
	OLED_Init();
	OLED_Clear();

	while(1)
    {
        OLED_Clear();
        LED_ON;

        OLED_ShowCHinese(0,0,0); // ��ʾ"H"
        OLED_ShowCHinese(18,0,1); // ��ʾ"ello"
        OLED_ShowCHinese(36,0,2); // ��ʾ�ո�
        OLED_ShowCHinese(54,0,3); // ��ʾ"I"
        OLED_ShowCHinese(72,0,4); // ��ʾ"m"
        OLED_ShowCHinese(90,0,5); // ��ʾ"m"
        OLED_ShowString(0,3,"CSY is a pig");
        //OLED_ShowString(8,2,"ZHONGJINGYUAN");
        OLED_ShowString(0,6,"ASCII:");
        OLED_ShowString(63,6,"CODE:");
        OLED_ShowChar(48,6,t);//��ʾASCII�ַ�
        t++;
        if(t>'~')t=' ';
        OLED_ShowNum(103,6,t,3,16);//��ʾASCII�ַ�����ֵ

        Delay_Ms(8000);
        OLED_Clear();
        Delay_Ms(8000);
          LED_OFF;
//        OLED_DrawBMP(0,0,128,8,BMP1);  //ͼƬ��ʾ(ͼƬ��ʾ���ã����ɵ��ֱ�ϴ󣬻�ռ�ý϶�ռ䣬FLASH�ռ�8K��������)
//        Delay_Ms(8000);
//        OLED_DrawBMP(0,0,128,8,BMP2);
//        Delay_Ms(8000);
	}
}

