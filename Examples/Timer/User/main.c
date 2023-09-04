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

void GPIO_Toggle_INIT(void)
{
    GPIO_InitTypeDef GPIO_InitStructureA = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    GPIO_InitStructureA.GPIO_Pin = GPIO_Pin_0;
    GPIO_InitStructureA.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructureA.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructureA);
}

/*********************************************************************
 * @fn      TIM6_Init
 *
 * @brief   Initializes TIM6.
 *
 * @param   period - the period value.
 *          period - the prescaler value.
 *
 * @return  none
 */
void TIM6_Init(u16 period, u16 prescaler)
{
    TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure;

    RCC_APB1PeriphClockCmd( RCC_APB1Periph_TIM6, ENABLE );

    TIM_TimeBaseInitStructure.TIM_Period = period;
    TIM_TimeBaseInitStructure.TIM_Prescaler = prescaler;
    TIM_TimeBaseInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Down;
    TIM_TimeBaseInit(TIM6, &TIM_TimeBaseInitStructure);

    TIM_ITConfig(TIM6, TIM_IT_Update, ENABLE);
    TIM_ARRPreloadConfig( TIM6, ENABLE );
    TIM_Cmd(TIM6, ENABLE );
}

void Interrupt_Init(void)
{
    NVIC_InitTypeDef NVIC_InitStructure = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO | RCC_APB2Periph_GPIOA, ENABLE);

    NVIC_InitStructure.NVIC_IRQChannel = TIM6_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
}
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
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	SystemCoreClockUpdate();
	Delay_Init();
	USART_Printf_Init(115200);	
	printf("SystemClk:%d\r\n",SystemCoreClock);
	printf( "ChipID:%08x\r\n", DBGMCU_GetCHIPID() );
	printf("This is Timer example\r\n");

	GPIO_Toggle_INIT();
	// period = 4999 -> 0-4999 即周期为5000
	// prescaler = 14400-1 -> 144MHz / 14400 = 10000即为每秒进行10000次计数
	// 则每0.5s LED 电平发生一次变化
	TIM6_Init(5000-1, 14400-1);
	Interrupt_Init();
	while(1)
    {

	}
}

