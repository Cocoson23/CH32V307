/********************************** (C) COPYRIGHT *******************************
* File Name          : ch32v30x_it.c
* Author             : WCH
* Version            : V1.0.0
* Date               : 2021/06/06
* Description        : Main Interrupt Service Routines.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/
#include "ch32v30x_it.h"

void NMI_Handler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void HardFault_Handler(void) __attribute__((interrupt("WCH-Interrupt-fast")));

/*********************************************************************
 * @fn      NMI_Handler
 *
 * @brief   This function handles NMI exception.
 *
 * @return  none
 */
void NMI_Handler(void)
{
}

/*********************************************************************
 * @fn      HardFault_Handler
 *
 * @brief   This function handles Hard Fault exception.
 *
 * @return  none
 */
void HardFault_Handler(void)
{
  while (1)
  {
  }
}

/********************************************************************
* �� �� ��     : TIM6_IRQHandler
* ��������     : �жϷ������ĺ���
* ��    ��     : ��
* ��    ��     : ��
*********************************************************************/
void TIM6_IRQHandler(void)   __attribute__((interrupt("WCH-Interrupt-fast")));
volatile uint16_t LED_Status = 0; // �ж���ʹ�õı����� volatile �ɵ���ȫ�ֱ���
void TIM6_IRQHandler(void)
{
   TIM_ClearFlag(TIM6, TIM_FLAG_Update);//�����־λ
   LED_Status = !LED_Status ;  // �� LED ״ֵ̬ȡ��
   GPIO_WriteBit(GPIOA, GPIO_Pin_0, LED_Status); // ���� PA0 (�� LED1) ״̬
}
