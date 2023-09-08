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

/*
 *@Pin connection
 PA2 USART2 TX <---> PC1 UART6 RX
 PA3 USART2 RX <---> PC0 UART6 TX
*/

#include "debug.h"


typedef enum
{
    FAILED = 0,
    PASSED = !FAILED
} TestStatus;

/* Global define */
#define TxSize     (size(TxBuffer))
#define size(a)    (sizeof(a) / sizeof(*(a)))

/* Global Variable */
u8         TxBuffer[] = "Buffer Send from USART2 to UART6 by polling!";
u8         RxBuffer[TxSize] = {0};
u8         TxCnt = 0, RxCnt = 0;
TestStatus TransferStatus = FAILED;

/*********************************************************************
 * @fn      Buffercmp
 *
 * @brief   Compares two buffers
 *
 * @param   Buf1,Buf2 - buffers to be compared
 *          BufferLength - buffer's length
 *
 * @return  PASSED - Buf1 identical to Buf
 *          FAILED - Buf1 differs from Buf2
 */
TestStatus Buffercmp(uint8_t *Buf1, uint8_t *Buf2, uint16_t BufLength)
{
    while(BufLength--)
    {
        if(*Buf1 != *Buf2)
        {
            return FAILED;
        }
        Buf1++;
        Buf2++;
    }
    return PASSED;
}

/*********************************************************************
 * @fn      USARTx_CFG
 *
 * @brief   Initializes the USART2 & UART6 peripheral.
 *
 * @return  none
 */
void USARTx_CFG(void)
{
    GPIO_InitTypeDef  GPIO_InitStructure = {0};
    USART_InitTypeDef USART_InitStructure = {0};

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2 | RCC_APB1Periph_UART6, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOC, ENABLE);

    /* USART2 TX-->A.2   RX-->A.3 */
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    /* USART3 TX-->C.0  RX-->C.1 */
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOC, &GPIO_InitStructure);
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOC, &GPIO_InitStructure);

    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Tx | USART_Mode_Rx;

    USART_Init(USART2, &USART_InitStructure);
    USART_Cmd(USART2, ENABLE);

    USART_Init(UART6, &USART_InitStructure);
    USART_Cmd(UART6, ENABLE);
}

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
    printf("SystemClk:%d\r\n", SystemCoreClock);
    printf( "ChipID:%08x\r\n", DBGMCU_GetCHIPID() );
    printf("USART Polling TEST\r\n");
    USARTx_CFG(); /* USART2 & UART6 INIT */

    while(TxCnt < TxSize)
    {
        USART_SendData(USART2, TxBuffer[TxCnt++]);
        // 等待发送完毕
        /*
         * USART_FLAG_TXE 数据寄存器空
         * 0 数据还没被转移到移位寄存器 -> RESET 未发送完毕
         * 1 数据已经被转移到移位寄存器 -> SET 已发送完毕
         */
        while(USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET)
        {
            /* waiting for sending finish */
        }
        // 等待接收完毕
        /*
         * USART_FLAG_RXNE 就收数据就绪
         * 0 数据还未收到 -> RESET
         * 1 数据已收到，可以读出 -> SET
         */
        while(USART_GetFlagStatus(UART6, USART_FLAG_RXNE) == RESET)
        {
            /* waiting for receiving finish */
        }
        RxBuffer[RxCnt++] = (USART_ReceiveData(UART6));
    }

    TransferStatus = Buffercmp(TxBuffer, RxBuffer, TxSize);

    if(TransferStatus)
    {
        printf("send success!\r\n");
        printf("TXBuffer: %s \r\n", TxBuffer);
        printf("RxBuffer: %s \r\n", RxBuffer);
    }
    else
    {
        printf("send fail!\r\n");
        printf("TXBuffer: %s \r\n", TxBuffer);
        printf("RxBuffer: %s \r\n", RxBuffer);
    }
    while(1)
    {
    }
}
