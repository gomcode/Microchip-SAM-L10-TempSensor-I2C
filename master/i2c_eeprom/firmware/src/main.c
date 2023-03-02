/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include <string.h>
#define LED_ON()                       LED_Clear()
#define LED_OFF()                      LED_Set()

#define TMR006_ADDR                            0x40
#define TMR006_Tdie_ADDR                     0x00 // Tdie Register
#define TMR006_Tamb_ADDR                    0x01 // Tamb Register
#define TMR006_CONFIG_ADDR                 0x02 // Configuration Register

#define APP_ACK_DATA_LENGTH                     1
#define APP_RECEIVE_DUMMY_WRITE_LENGTH   1
#define APP_TRANSMIT_DATA_LENGTH            2
#define APP_RECEIVE_DATA_LENGTH                2


#define INIT_DATA_LENGTH                      4
static uint8_t tmp006Init[INIT_DATA_LENGTH] =
{
    TMR006_ADDR, TMR006_CONFIG_ADDR,
    0xF9, 0x80 // set to 1111 1001 1000 0000
};

#define TEMP_REQUEST_DATA_LENGHTH       2
static uint8_t tDieLoad[TEMP_REQUEST_DATA_LENGHTH] =
{
    TMR006_ADDR, TMR006_Tdie_ADDR
};
/*
static uint8_t tAmbLoad[TEMP_REQUEST_DATA_LENGHTH] =
{
    TMR006_ADDR, TMR006_Tamb_ADDR
};
*/

#define TEMP_RECEIVE_DATA_LENGHTH           2
static uint8_t tDieVal[TEMP_RECEIVE_DATA_LENGHTH];
//static uint8_t tAmbVal[TEMP_RECEIVE_DATA_LENGHTH];

void tDieTempPrint(void) {
    uint32_t result = 0;
    for (int i = 0; i<TEMP_RECEIVE_DATA_LENGHTH; i++) {
        result <<= 8;
        result |= tDieVal[TEMP_RECEIVE_DATA_LENGHTH];
       // result = (int)tDieVal;
    }
    result *= 0.03125f;
    printf("%d",(int)result);
}
/*
void tAmbTempPrint(void) {
    uint32_t result = 0;
    for (int i = 0; i <TEMP_RECEIVE_DATA_LENGHTH; i++) {
        //result <<= 8;
        //result |= tAmbVal[TEMP_RECEIVE_DATA_LENGHTH];
    }
    result >>= 2;
    result *= 0.03125f;
    printf("%d",(int)result);
}
*/
/*
 * static uint8_t testTxData[APP_TRANSMIT_DATA_LENGTH] =
{
    APP_AT24MAC_MEMORY_ADDR
   // ,APP_AT24MAC_MEMORY_ADDR1
   //       ,
   // 'M','C','H','P',
};
  */

//static uint8_t  testRxData[APP_RECEIVE_DATA_LENGTH];

/*
int tempConv(uint8_t input[]) {
    int result = 0;

    int i;
    for (i = 0; i<APP_RECEIVE_DATA_LENGTH; i++){
        result += input[i]<<8*(APP_RECEIVE_DATA_LENGTH-1-i);
    }
    //result = (int)((input[0]<<8) + input[1]);
    result = result >> 2;
    result *= 0.03125;
    return result;
}*/

typedef enum
{
    APP_STATE_EEPROM_STATUS_VERIFY,
    APP_STATE_EEPROM_WRITE,
    APP_STATE_EEPROM_WAIT_WRITE_COMPLETE,
    APP_STATE_EEPROM_CHECK_INTERNAL_WRITE_STATUS,
    APP_STATE_EEPROM_READ,
    APP_STATE_EEPROM_WAIT_READ_COMPLETE,
    APP_STATE_VERIFY,
    APP_STATE_IDLE,
    APP_STATE_XFER_SUCCESSFUL,
    APP_STATE_XFER_ERROR

} APP_STATES;

typedef enum
{
    APP_TRANSFER_STATUS_IN_PROGRESS,
    APP_TRANSFER_STATUS_SUCCESS,
    APP_TRANSFER_STATUS_ERROR,
    APP_TRANSFER_STATUS_IDLE,

} APP_TRANSFER_STATUS;

void APP_I2CCallback(uintptr_t context )
{
    APP_TRANSFER_STATUS* transferStatus = (APP_TRANSFER_STATUS*)context;

    if(SERCOM1_I2C_ErrorGet() == SERCOM_I2C_ERROR_NONE)
    {
        if (transferStatus)
        {
            *transferStatus = APP_TRANSFER_STATUS_SUCCESS;
        }
    }
    else
    {
        if (transferStatus)
        {
            *transferStatus = APP_TRANSFER_STATUS_ERROR;
        }
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    //APP_STATES state = APP_STATE_EEPROM_STATUS_VERIFY;
    APP_STATES state = APP_STATE_EEPROM_WRITE;
    volatile APP_TRANSFER_STATUS transferStatus = APP_TRANSFER_STATUS_ERROR;
    uint8_t ackData = 1;

    /* Initialize all modules */
    SYS_Initialize ( NULL );
    printf("\r\n System Initialized \r\n");
    while ( true )
    {
        state = APP_STATE_EEPROM_READ;
        
        /* Check the application's current state. */
        switch (state)
        {
            case APP_STATE_EEPROM_STATUS_VERIFY:

                /* Register the TWIHS Callback with transfer status as context */
                SERCOM1_I2C_CallbackRegister( APP_I2CCallback, (uintptr_t)&transferStatus );

               /* Verify if EEPROM is ready to accept new requests */
                transferStatus = APP_TRANSFER_STATUS_IN_PROGRESS;
                SERCOM1_I2C_Write(TMR006_ADDR, &ackData, APP_ACK_DATA_LENGTH);

                state = APP_STATE_EEPROM_WRITE;
                break;

            case APP_STATE_EEPROM_WRITE:

                if (transferStatus == APP_TRANSFER_STATUS_SUCCESS)
                {
                    /* Write data to EEPROM */
                    transferStatus = APP_TRANSFER_STATUS_IN_PROGRESS;
                    SERCOM1_I2C_Write(TMR006_ADDR, &tmp006Init[0], APP_TRANSMIT_DATA_LENGTH);
                    state = APP_STATE_EEPROM_WAIT_WRITE_COMPLETE;
                }
                else if (transferStatus == APP_TRANSFER_STATUS_ERROR)
                {
                    /* EEPROM is not ready to accept new requests. 
                     * Keep checking until the EEPROM becomes ready. */
                    state = APP_STATE_EEPROM_STATUS_VERIFY;
                }
                break;

            case APP_STATE_EEPROM_WAIT_WRITE_COMPLETE:

                if (transferStatus == APP_TRANSFER_STATUS_SUCCESS)
                {
                    /* Read the status of internal write cycle */
                    transferStatus = APP_TRANSFER_STATUS_IN_PROGRESS;
                    SERCOM1_I2C_Write(TMR006_ADDR, &ackData, APP_ACK_DATA_LENGTH);
                    state = APP_STATE_EEPROM_CHECK_INTERNAL_WRITE_STATUS;
                }
                else if (transferStatus == APP_TRANSFER_STATUS_ERROR)
                {
                    state = APP_STATE_XFER_ERROR;
                }
                break;

             case APP_STATE_EEPROM_CHECK_INTERNAL_WRITE_STATUS:

                if (transferStatus == APP_TRANSFER_STATUS_SUCCESS)
                {
                    state = APP_STATE_EEPROM_READ;
                }
                else if (transferStatus == APP_TRANSFER_STATUS_ERROR)
                {
                    /* EEPROM's internal write cycle is not complete. Keep checking. */
                    transferStatus = APP_TRANSFER_STATUS_IN_PROGRESS;
                    SERCOM1_I2C_Write(TMR006_ADDR, &ackData, APP_ACK_DATA_LENGTH);
                }
                break;

            case APP_STATE_EEPROM_READ:

                transferStatus = APP_TRANSFER_STATUS_IN_PROGRESS;
                /* Read the data from the page written earlier */
            /*   SERCOM1_I2C_Write(TMR006_ADDR, &ackData, APP_ACK_DATA_LENGTH);
               SERCOM1_I2C_Write(TMR006_Tamb_ADDR, &ackData, APP_ACK_DATA_LENGTH);
               SERCOM1_I2C_Write(TMR006_ADDR, &ackData, APP_ACK_DATA_LENGTH);
               SERCOM1_I2C_Read(tDieVal[0], &ackData, TEMP_RECEIVE_DATA_LENGHTH);
               SERCOM1_I2C_Read(tDieVal[1], &ackData, TEMP_RECEIVE_DATA_LENGHTH);
*/
               SERCOM1_I2C_WriteRead(TMR006_ADDR, &tDieLoad[0], APP_RECEIVE_DUMMY_WRITE_LENGTH, &tDieVal[0], TEMP_RECEIVE_DATA_LENGHTH);
               tDieTempPrint();
               //printf("\r\n read sentence running \r\n");
               //printf("%d",temp);
               //putchar((unsigned char)temp);
               state = APP_STATE_EEPROM_WAIT_READ_COMPLETE;
               break;

            case APP_STATE_EEPROM_WAIT_READ_COMPLETE:

                if (transferStatus == APP_TRANSFER_STATUS_SUCCESS)
                {
                    state = APP_STATE_VERIFY;
                }
                else if (transferStatus == APP_TRANSFER_STATUS_ERROR)
                {
                    state = APP_STATE_XFER_ERROR;
                }
                break;

            case APP_STATE_VERIFY:

                if (memcmp(&tmp006Init[2], &tmp006Init[0], APP_RECEIVE_DATA_LENGTH) != 0 )
                {
                    /* It means received data is not same as transmitted data */
                    state = APP_STATE_XFER_ERROR;
                }
                else
                {
                    /* It means received data is same as transmitted data */
                    state = APP_STATE_XFER_SUCCESSFUL;
                }
                break;

            case APP_STATE_XFER_SUCCESSFUL:
            {
                LED_ON();
                break;
            }
            case APP_STATE_XFER_ERROR:
            {
                LED_OFF();
                break;
            }
            default:
                break;
        }
        
    }
}
/*******************************************************************************
 End of File
*/

