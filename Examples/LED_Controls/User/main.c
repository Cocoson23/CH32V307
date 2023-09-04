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

/*
 * Pins:
 *      PA0 <-> LED1
 */

void GPIO_Toggle_INIT(void)
{
    GPIO_InitTypeDef GPIO_InitStructureA = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    GPIO_InitStructureA.GPIO_Pin = GPIO_Pin_0;
    GPIO_InitStructureA.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructureA.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructureA);
}


/* Global typedef */

/* Global define */

/* Global Variable */


/*********************************************************************
 * @fn      main
 * @LED Control
 * @brief   Main program.
 *
 * @return  none
 */
int main(void)
{
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
    SystemCoreClockUpdate();
    Delay_Init();
    USART_Printf_Init(115200);
    printf("SystemClk:%d\r\n",SystemCoreClock);
    printf( "ChipID:%08x\r\n", DBGMCU_GetCHIPID() );
    printf("This is LED Control example\r\n");
    GPIO_Toggle_INIT();
    while(1)
    {
        GPIO_WriteBit(GPIOA, GPIO_Pin_0, 1);
        Delay_Ms(1000);
        GPIO_WriteBit(GPIOA, GPIO_Pin_0, 0);
        Delay_Ms(1000);
    }

    return 0;
}

