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
#include "definitions.h"
#include "tmp006.h"                // SYS function prototypes
#include <string.h>
#define LED_ON()                       LED_Clear()
#define LED_OFF()                      LED_Set()

#define APP_ACK_DATA_LENGTH                     1
#define APP_RECEIVE_DUMMY_WRITE_LENGTH   1
#define APP_TRANSMIT_DATA_LENGTH            2
#define APP_RECEIVE_DATA_LENGTH                2

#define TMR006_ADDR                            0x40 // 0b0100 0000
#define TMR006_Vobj_ADDR                     0x00 // Tdie Register
#define TMR006_Tamb_ADDR                    0x01 // Tamb Register
#define TMR006_CONFIG_ADDR                 0x02 // Configuration Register
#define TMR006_MID_ADDR                     0xFE // Manufacturer ID
#define TMR006_DID_ADDR                      0xFF // Device ID

#define TEMP_REQUEST_DATA_LENGHTH       6
static uint8_t TMP006Load[TEMP_REQUEST_DATA_LENGHTH] =
{
    TMR006_ADDR,
    TMR006_Vobj_ADDR,
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

struct TempReading TMP006_getTemp(void);
double TMP006_calculateTemp(double * tDie, double * vObj);

int16_t vObjVal = 0;
int16_t tAmbVal = 0;
long tAmbKVal = 0;
void vObjConv(void) {
    vObjVal = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        vObjVal <<= 8;
        vObjVal |= (int)vObjRaw[i];
    }
}
void tAmbConv(void) {
    tAmbVal=0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        tAmbVal <<= 8;
        tAmbVal |= (int)tAmbRaw[i];
    }
    tAmbKVal = tAmbVal + 273.15;
}

int getAbit(uint16_t x, int n) { // getbit()
  return (x & (1 << n)) >> n;
}

void binaryConv(uint16_t input) {
    for (int i = 16; i > 0; i--) { //8?? ???? ???
        int result = input >> i & 1;
        printf("%d", result);
    }
}

void vObjValPrint(void) {
     printf("vObjVal : ");
     
     binaryConv(vObjVal);
    printf("==%ld  ",vObjVal); 
  
   // printf("\n");   
}

void tAmbValPrint(void) {
    printf("tAmbVal : ");

    tAmbVal >>= 2;
    tAmbVal *= 0.03125f;
    
    binaryConv(tAmbVal);
    printf("==%ld  ",tAmbVal);
    //printf("   %d+%d",(int)tAmbVal[0],(int)tAmbVal[1]);
    //printf("\n");   
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

//static void EIC_User_Handler(uintptr_t context);
double temp = 0;
#include <math.h>

/*!
 *
 * Function to calulate and return the temperature and raw values from TMP006
 * sensor with transient correction.
 *
 * @param None
 *
 * @return TempReading structure
 * tempRead.temp = celsius
 * tempRead.tDie = rawdata -> celsius = ((double)(tempRead.tDie >> 2)) * .03125
 * C = (F - 32) / 1.8
 * F = C * 1.8 + 32
 *
 */
#if 1
double tDie[4] = {0,0,};

struct TempReading TMP006_getTemp(void)
{
  struct TempReading tempRead;
  double vObjcorr = 0;
  double tslope = 0;
  double alpha = 2.96 * pow(10, -4);

  /* Shift oldest tdie temp out */
  tDie[0] = tDie[1];
  tDie[1] = tDie[2];
  tDie[2] = tDie[3];

  /* Read the object voltage. Assuming that the data is ready. */
  tempRead.vObj = 200;//vObjVal;
  /* Read the ambient temperature */
  tempRead.tDie = 3354;//tAmbVal;
 //printf("Tobject == %d, Tambient == %d\r\n", vObjVal, tAmbVal);
  /* Convert latest tDie measurement to Kelvin */
  tDie[3] = (((double)(tempRead.tDie >> 2)) * .03125) + 273.15;

  if(tDie[0] != 0)
  {
    /* Executes only if all 4 tdie variables are non-zero */

    /* Calculate tslope */
    tslope = -(0.3*tDie[0]) - (0.1*tDie[1]) + (0.1*tDie[2]) + (0.3*tDie[3]);

    /* Correct sensor voltage */
    vObjcorr = (((double)(tempRead.vObj)) * .00000015625) + (tslope * alpha);
  }
  else
  {
    /* Executes if all 4 tdie variables have not yet been filled */
    vObjcorr = ((double)(tempRead.vObj)) * .00000015625;
  }

  tempRead.temp = TMP006_calculateTemp(&tDie[3], &vObjcorr);

  return tempRead;
}

/*!
 *
 * Function to calulate temperature based on tdie and vobj
 *
 * @param tDie temperature of the die converted to Kelvin
 * @param vObj object voltage converted first by multiplying 1.5625e-7
 *
 * @return temperature value in Celcius
 *
 */
double TMP006_calculateTemp(double * tDie, double * vObj)
{
  /* Calculate TMP006. This needs to be reviewed and calibrated by TMP group */
  double S0 = 6.0 * pow(10, -14);       /* Default S0 cal value */
  double a1 = 1.75*pow(10, -3);
  double a2 = -1.678*pow(10, -5);
  double b0 = -2.94*pow(10, -5);
  double b1 = -5.7*pow(10, -7);
  double b2 = 4.63*pow(10, -9);

  double c2 = 13.4;
  double Tref = 298.15;
  double S = S0*(1.0 + a1*(*tDie - Tref) + a2*pow((*tDie - Tref),2));
  double Vos = b0 + b1*(*tDie - Tref) + b2*pow((*tDie - Tref),2);
  double fObj = (*vObj - Vos) + c2*pow((*vObj - Vos),2);
  double Tobj = pow(pow(*tDie,4) + (fObj/S),.25);

  return (Tobj - 273.15);
}
#endif





int main ( void )
{
    int16_t Tobject, Tambient;
    struct TempReading currTemp;
//    EIC_CallbackRegister(EIC_PIN_21,EIC_User_Handler, 0);
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    SERCOM1_I2C_Write(TMR006_ADDR, &tmp006Init[0], INIT_DATA_LENGTH);

    printf("\r\n System Initialized \r\n");
    while(1) {
        SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[3], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &ConfigRaw[0], RECEIVE_DATA_LENGHTH);
        if( getAbit(ConfigRaw[1],7) ) {

            printf("\n");
              
              SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[2], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &tAmbRaw[0], RECEIVE_DATA_LENGHTH);
              tAmbConv();
//              tAmbValPrint();

              //SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[3], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &ConfigRaw[0], RECEIVE_DATA_LENGHTH);
//              ConfigPrint();

              SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[4], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &MIDRaw[0], RECEIVE_DATA_LENGHTH);
//              MIDPrint();

              SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[5], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &DIDRaw[0], RECEIVE_DATA_LENGHTH);
//              DIDPrint();

              SERCOM1_I2C_WriteRead(TMR006_ADDR, &TMP006Load[1], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &vObjRaw[0], RECEIVE_DATA_LENGHTH);
              vObjConv();
//              vObjValPrint();   
              
               currTemp = TMP006_getTemp();
               Tobject = (int16_t)(currTemp.temp*10.0);
               Tambient = (int16_t)(((double)(currTemp.tDie >> 2)) * .03125);  
               
               printf("Tobject == %d, Tambient == %d\r\n", Tobject, Tambient);
               
              //temp = (int)( tmp006_getTemp(vObjVal, tAmbVal).temp );
              //temp = tmp006_calculateTemp(tAmbVal, vObjVal);
              //temp = calculateTobj(vObjVal, tAmbVal);
              
              
  //            printf("==%f", temp);

          }
      
    }
    
}

