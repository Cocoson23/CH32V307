/********************************** (C) COPYRIGHT ************* ******************
* File Name          : eth_driver.h
* Author             : WCH
* Version            : V1.3.0
* Date               : 2022/06/02
* Description        : This file contains the headers of the ETH Driver.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/
#ifndef __ETH_DRIVER__
#define __ETH_DRIVER__

#ifdef __cplusplus
 extern "C" {
#endif 

#include "debug.h"

/* Internal 10M PHY */
#define USE_10M_BASE                            1
/* The chips supported by the MII/RMII driver are: CH182/RTL8201F, etc. */
#define USE_MAC_MII                             2
#define USE_MAC_RMII                            3
#define USE_MAC_RGMII                           4

#ifndef PHY_MODE
#define PHY_MODE                                USE_10M_BASE
#endif

 /* 1: interrupt 0: polling in RMII or RGMII mode */
#define LINK_STAT_ACQUISITION_METHOD            1

#define PHY_ADDRESS                             1

#define ETH_DMARxDesc_FrameLengthShift          16

#define ROM_CFG_USERADR_ID                      0x1FFFF7E8

#define PHY_LINK_TASK_PERIOD                    50

#define PHY_ANLPAR_SELECTOR_FIELD               0x1F
#define PHY_ANLPAR_SELECTOR_VALUE               0x01       /* 5B'00001 */

#define PHY_LINK_INIT                           0x00
#define PHY_LINK_SUC_P                          (1<<0)
#define PHY_LINK_SUC_N                          (1<<1)
#define PHY_LINK_WAIT_SUC                       (1<<7)

#define PHY_PN_SWITCH_P                         (0<<2)
#define PHY_PN_SWITCH_N                         (1<<2)
#define PHY_PN_SWITCH_AUTO                      (2<<2)

#ifndef WCHNETTIMERPERIOD
#define WCHNETTIMERPERIOD                       10   /* Timer period, in Ms. */
#endif

#define GPIO_Output(a,b) \
  GPIO_InitStructure.GPIO_Pin = b;\
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;\
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;\
  GPIO_Init(a, &GPIO_InitStructure)

#define GPIO_Input(a,b) \
  GPIO_InitStructure.GPIO_Pin = b;\
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;\
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;\
  GPIO_Init(a, &GPIO_InitStructure)

#define QUERY_STAT_FLAG  ((LastQueryPhyTime == (LocalTime / 1000)) ? 0 : 1)

#define ENABLE_POLLING_TO_QUERY_PHY_LINK_STAT   ((PHY_MODE == USE_MAC_MII) || \
                                                (((PHY_MODE == USE_MAC_RMII) || \
                                                  (PHY_MODE == USE_MAC_RGMII)) && \
                                                   !LINK_STAT_ACQUISITION_METHOD))

#define ACCELERATE_LINK_PROCESS() do{\
    if((TRDetectStep < 2) && (ETH_ReadPHYRegister(gPHYAddress, PHY_ANLPAR) & PHY_ANLPAR_SELECTOR_FIELD))\
        LinkTaskPeriod = 0;\
}while(0)

#define UPDATE_LINKTASKPERIOD() do{\
    if(TRDetectStep == 1)\
    {\
        RandVal = RandVal * 214017 + 2531017;\
        LinkTaskPeriod = RandVal%100 + 50;\
    }\
    else {\
        LinkTaskPeriod = 50;\
    }\
}while(0)

#define PHY_RESTART_AUTONEGOTIATION()       do{\
    RegVal = ETH_ReadPHYRegister(gPHYAddress, PHY_BCR);\
    RegVal &= ~0x01;\
    RegVal |= PHY_Restart_AutoNegotiation;\
    ETH_WritePHYRegister( gPHYAddress, PHY_BCR, RegVal);\
    RegVal = ETH_ReadPHYRegister(gPHYAddress, PHY_BCR);\
    RegVal |= 0x03 | PHY_Restart_AutoNegotiation;\
    ETH_WritePHYRegister( gPHYAddress, PHY_BCR, RegVal);\
}while(0)

#define PHY_TR_SWITCH()    do{\
    phy_mdix = ETH_ReadPHYRegister(gPHYAddress, PHY_MDIX);\
    if(phy_mdix & 0x01)\
    {\
        phy_mdix &= ~0x03;\
        phy_mdix |= 1 << 1;\
    }\
    else\
    {\
        phy_mdix &= ~0x03;\
        phy_mdix |= 1 << 0;\
    }\
    ETH_WritePHYRegister(gPHYAddress, PHY_MDIX, phy_mdix);\
    PHY_RESTART_AUTONEGOTIATION();\
}while(0)

#define PHY_TR_REVERSE()       do{\
    RegVal = ETH_ReadPHYRegister(gPHYAddress, PHY_MDIX);\
    if(RegVal & 0x01)\
    {\
        RegVal &= ~0x03;\
        RegVal |= 1 << 1;\
    }\
    else{\
        RegVal &= ~0x03;\
        RegVal |= 1 << 0;\
    }\
    ETH_WritePHYRegister(gPHYAddress, PHY_MDIX, RegVal);\
}while(0)

#define PHY_PN_SWITCH(PNMode)   do{\
    if(PNMode == PHY_PN_SWITCH_AUTO)\
    {\
         phyPN = PHY_PN_SWITCH_AUTO;\
    }\
    else{\
        phyPN = (ETH_ReadPHYRegister(gPHYAddress, PHY_MDIX) & (~(0x03 << 2))) | PNMode;\
    }\
    ETH_WritePHYRegister(gPHYAddress, PHY_MDIX, phyPN);\
    phyPN = PNMode;\
    PHY_RESTART_AUTONEGOTIATION();\
}while(0)

#define PHY_NEGOTIATION_PARAM_INIT()    do{\
    phyStatus = 0;\
    phySucCnt = 0;\
    phyLinkCnt = 0;\
    TRDetectStep = 0;\
    PhyPolarityDetect = 0;\
    phyLinkStatus = PHY_LINK_INIT;\
    phyPN = PHY_PN_SWITCH_AUTO;\
    ETH_WritePHYRegister(gPHYAddress, PHY_MDIX, phyPN);\
}while(0)

#define PHY_LINK_RESET()       do{\
    ETH_WritePHYRegister(gPHYAddress, PHY_BCR, PHY_Reset);\
    PHY_NEGOTIATION_PARAM_INIT();\
}while(0)

#define PHY_ADDRESS                             1
#define ETH_TXBUFNB                             2
#define ETH_RXBUFNB                             4
#define ETH_RX_BUF_SZE                          ETH_MAX_PACKET_SIZE
#define ETH_TX_BUF_SZE                          ETH_MAX_PACKET_SIZE

extern ETH_DMADESCTypeDef *DMATxDescToSet;
extern ETH_DMADESCTypeDef *DMARxDescToGet;
extern __attribute__ ((aligned(4))) uint8_t  MACTxBuf[ETH_TXBUFNB*ETH_TX_BUF_SZE];

void WCHNET_ETHIsr(void);
void ETH_PHYLink( void );
void WCHNET_MainTask(void);
void ETH_Init( uint8_t *macAddr );
void WCHNET_GetMacAddr( uint8_t *p );
void WCHNET_TimeIsr( uint16_t timperiod );
void ETH_Configuration( uint8_t *macAddr );
uint32_t MACRAW_Tx(uint8_t *buff, uint16_t len);

#ifdef __cplusplus
}
#endif

#endif
