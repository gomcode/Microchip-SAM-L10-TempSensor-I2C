/*******************************************************************************
 *
 * tmp006.c - Driver for the TMP006 Module.
 *
 ******************************************************************************/

#include <math.h>
#include "tmp006.h"

/* Holds tDie of 4 readings for transient correction
 * with tDie[0] = oldest, tdie[3] = newest
 */
//int tDie[4] = {0};

void tmp006_wakeup(void)
{
    unsigned int settings;

    /* Read current settings */
    settings = tmp006_read(TMP006_P_WRITE_REG);

    /* Power-up TMP006 */
    settings |= TMP006_POWER_UP;

    tmp006_write(TMP006_P_WRITE_REG, settings);
}

/*!
 *
 * Disables TMP006 by putting it into power down mode.
 *
 * @param None
 *
 * @return None
 *
 */
void tmp006_disable(void)
{
    unsigned int settings;

    /* Read current settings */
    settings = tmp006_read(TMP006_P_WRITE_REG);

    /* Mask out and power down TMP006 */
    settings &= ~(TMP006_POWER_UP);

    /* Power down TMP006 */
    tmp006_write(TMP006_P_WRITE_REG, settings);
}

/*!
 *
 * Function to poll and check if TMP006 data is ready to be read out.
 * This function reads the status of DRDY from TMP006.
 *
 * @param None
 *
 * @return \b 0 \b - Data not ready \n
 *         \b 1 \b - Data is ready
 *
 */
unsigned char tmp006_ready(void)
{
    /* Read DRDY status from Config register */
    return (TMP006_DRDY & tmp006_read(TMP006_P_WRITE_REG));
}
#if 0
/*!
 *
 * Function to calulate and return the temperature and raw values from TMP006
 * sensor with transient correction.
 *
 * @param None
 *
 * @return TempReading structure
 *
 */
struct TempReading tmp006_getTemp(int vObjVal, int tAmbVal)
{
    struct TempReading tempRead;
    long double vObjcorr = 0;
    long double tslope = 0;
    long double alpha = 2.96 * pow(10, -4);

    /* Shift oldest tdie temp out */
    tDie[0] = tDie[1];
    tDie[1] = tDie[2];
    tDie[2] = tDie[3];

    /* Read the object voltage. Assuming that the data is ready. */
    tempRead.vObj = vObjVal;
    /* Read the ambient temperature */
    tempRead.tDie = tAmbVal;

    /* Convert latest tDie measurement to Kelvin */
    tDie[3] = (((long double)(tempRead.tDie >> 2)) * .03125) + 273.15;

    if(tDie[0] != 0)
    {
        /* Executes only if all 4 tdie variables are non-zero */

        /* Calculate tslope */
        tslope = -(0.3*tDie[0]) - (0.1*tDie[1]) + (0.1*tDie[2]) + (0.3*tDie[3]);

        /* Correct sensor voltage */
        vObjcorr = (((long double)(tempRead.vObj)) * .00000015625) + (tslope * alpha);
    }
    else
    {
        /* Executes if all 4 tdie variables have not yet been filled */
        vObjcorr = ((long double)(tempRead.vObj)) * .00000015625;
    }

    tempRead.temp = tmp006_calculateTemp(tDie[3], vObjcorr);
    return tempRead;
}

/*!
 *
 * Function to calulate temperature based on input_tDie and input_vObj
 *
 * @param input_tDie temperature of the die converted to Kelvin
 * @param input_vObj object voltage converted first by multiplying 1.5625e-7
 *
 * @return temperature value in Celcius
 *
 */

long double tmp006_calculateTemp(int input_tDie, int input_vObj)
{
    /* Calculate TMP006. This needs to be reviewed and calibrated by TMP group */
    long double S0 = 6 * pow(10, -14);       // Default S0 cal value, should be calibrated
    long double a1 = 1.75*pow(10, -3);
    long double a2 = -1.678*pow(10, -5);
    long double Tref = 298.15;
    long double b0 = -2.94*pow(10, -5);
    long double b1 = -5.7*pow(10, -7);
    long double b2 = 4.63*pow(10, -9);
    long double c2 = 13.4;

    long double S = S0*(1+a1*(input_tDie - Tref)+a2*pow((input_tDie - Tref),2));
    long double Vos = b0 + b1*(input_tDie - Tref) + b2*pow((input_tDie - Tref),2);
    long double fObj = (input_vObj - Vos) + c2*pow((input_vObj - Vos),2);
    long double Tobj = pow(pow(input_tDie,4) + (fObj/S),.25);
    return (Tobj - 273.15);
}

/*!
 *
 * Reads data out of the TMP006 via I2C.
 *
 * @param writeByte is the register address to read from.
 *
 * This function reads the TMP006 temperature sensor using USCI_B0 in
 * I2C Master mode. It requires the address to point to in the device and
 * returns to the user.
 *
 * @return the value in integer.
 *
 */

#endif