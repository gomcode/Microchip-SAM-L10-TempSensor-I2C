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
#include <math.h>
#define LED_ON()                       LED_Clear()
#define LED_OFF()                      LED_Set()

#define APP_ACK_DATA_LENGTH                     1
#define APP_RECEIVE_DUMMY_WRITE_LENGTH   1
#define APP_TRANSMIT_DATA_LENGTH            2
#define APP_RECEIVE_DATA_LENGTH                2

#define TMR006_ADDR                            0x40 // 0b0100 0000
#define TMR006_Tobj_ADDR                     0x00 // Tdie Register
#define TMR006_Tamb_ADDR                    0x01 // Tamb Register
#define TMR006_CONFIG_ADDR                 0x02 // Configuration Register
#define TMR006_MID_ADDR                     0xFE // Manufacturer ID
#define TMR006_DID_ADDR                      0xFF // Device ID

#define TEMP_REQUEST_DATA_LENGHTH       6
static uint8_t TMP006Load[TEMP_REQUEST_DATA_LENGHTH] =
{
    TMR006_ADDR,
    TMR006_Tobj_ADDR,
    TMR006_Tamb_ADDR,
    TMR006_CONFIG_ADDR,
    TMR006_MID_ADDR,
    TMR006_DID_ADDR
};

#define INIT_DATA_LENGTH                      3
static uint8_t tmp006Init[INIT_DATA_LENGTH] =
{
    TMR006_CONFIG_ADDR,
    0x75, 0x00 // set to 0111 0101 (0000 0000)
};  

#define RECEIVE_DATA_LENGHTH           2
static uint8_t vObjRaw[RECEIVE_DATA_LENGHTH];
static uint8_t tAmbRaw[RECEIVE_DATA_LENGHTH];
static uint8_t ConfigRaw[RECEIVE_DATA_LENGHTH];
static uint8_t MIDRaw[RECEIVE_DATA_LENGHTH];
static uint8_t DIDRaw[RECEIVE_DATA_LENGHTH];

int getAbit(uint16_t x, int n) { // getbit()
  return (x & (1 << n)) >> n;
}

void binaryConv(uint16_t input) {
    for (int i = 16; i > 0; i--) { //8?? ???? ???
        int result = input >> i & 1;
        printf("%d", result);
    }
}

int16_t vObjVal = 0;
int16_t tAmbVal = 0;
int16_t tAmbKVal = 0;
void vObjConv(void) {
    vObjVal = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        vObjVal <<= 8;
        vObjVal |= (int16_t)vObjRaw[i];
    }
}
void tAmbConv(void) {
    tAmbVal=0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        tAmbVal <<= 8;
        tAmbVal |= (int16_t)tAmbRaw[i];
    }
    tAmbKVal = tAmbVal + 273.15;
}

void vObjValPrint(void) {
     printf("vObjVal : ");
     
     binaryConv(vObjVal);
    printf("==%d  ",vObjVal); 
  
   // printf("\n");   
}

void tAmbValPrint(void) {
    printf("tAmbVal : ");

    //tAmbVal >>= 2;
    //tAmbVal *= 0.03125f;
    
    binaryConv(tAmbVal);
    printf("==%d  ", (int)( (tAmbVal>>2)*0.03125f ) );
}

void ConfigPrint(void) {
    uint16_t result = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        result <<= 8;
        result |= ConfigRaw[i];
    }

    printf("Configuration Reg. : ");
    binaryConv(result);
    printf("==%d  ",(int)result);      
}

void MIDPrint(void) {
    uint16_t result = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        result <<= 8;
        result |= MIDRaw[i];
    }

    printf("Manufacturer ID : ");
    binaryConv(result);
    printf("==%d  ",(int)result);    
}

void DIDPrint(void) {
    uint16_t result = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        result <<= 8;
        result |= DIDRaw[i];
    }

    printf("Device ID : ");
    binaryConv(result);
    printf("==%d  ",(int)result);    
}

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
// Section: TMP006 Point
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

long temp = 0;
bool isInt = false;

int main ( void )
{

//state = APP_STATE_EEPROM_STATUS_VERIFY;
//    uint8_t ackData = 1;
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    SERCOM1_I2C_Write(TMR006_ADDR, &tmp006Init[0], INIT_DATA_LENGTH);
    printf("\r\n System Initialized \r\n");

    while ( true )
    {
        SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[3], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &ConfigRaw[0], RECEIVE_DATA_LENGHTH);
        if( getAbit(ConfigRaw[1],7) ) {
              if ( isInt == false ) {
                  printf("\n");
                  
                  SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[3], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &ConfigRaw[0], RECEIVE_DATA_LENGHTH);
                  ConfigPrint();

                  SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[4], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &MIDRaw[0], RECEIVE_DATA_LENGHTH);
                  MIDPrint();

                  SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[5], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &DIDRaw[0], RECEIVE_DATA_LENGHTH);
                  DIDPrint();

                  SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[2], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &tAmbRaw[0], RECEIVE_DATA_LENGHTH);
                  tAmbConv();
                  tAmbValPrint();

                  SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[1], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &vObjRaw[0], RECEIVE_DATA_LENGHTH);
                  vObjConv();
                  vObjValPrint();   
                  printf("\n");
                  
                //  currTemp = tmp006_getTemp(vObjVal, tAmbVal);
                 // Tobject = (int16_t)(currTemp.temp*10.0);
                 // Tambient = (int16_t)(((double)(currTemp.tDie >> 2)) * .03125); 

                  // temp = (int)( tmp006_getTemp(vObjVal, tAmbVal).temp );
                  //temp = tmp006_calculateTemp(tAmbVal, vObjVal);
                  //temp = calculateTobj(vObjVal, tAmbVal);

          //            printf("==%f", temp);
                                   
                  isInt = true;
              }
          }
        isInt = false;
    }
}