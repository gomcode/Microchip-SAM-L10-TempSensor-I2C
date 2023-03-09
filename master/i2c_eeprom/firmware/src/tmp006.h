/* --COPYRIGHT--,BSD
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * --/COPYRIGHT--*/
#ifndef __TMP006_H__
#define __TMP006_H__

/*******************************************************************************
 *
 * If building with a C++ compiler, make all of the definitions in this header
 * have a C binding.
 *
 ******************************************************************************/
#ifdef __cplusplus
extern "C"
{
#endif

/*! \name TMP006 Internal Pointer Register Address
 * @{
 */
/*! TMP006 object voltage register pointer */
#define TMP006_P_VOBJ       0x00
/*! TMP006 ambient temperature register pointer */
#define TMP006_P_TABT       0x01
/*! TMP006 configuration register pointer */
#define TMP006_P_WRITE_REG  0x02
/*! TMP006 manufacturer ID register pointer */
#define TMP006_P_MAN_ID     0xFE
/*! TMP006 device ID register pointer */
#define TMP006_P_DEVICE_ID  0xFF
/*! @} */

/*! \name TMP006 Configuration Register Bits
 * @{
 */
#define TMP006_RST          0x8000
#define TMP006_POWER_DOWN   0x0000
#define TMP006_POWER_UP     0x7000
#define TMP006_CR_4         0x0000
#define TMP006_CR_2         0x0200
#define TMP006_CR_1         0x0400
#define TMP006_CR_0_5       0x0600
#define TMP006_CR_0_25      0x0800
#define TMP006_EN           0x0100
#define TMP006_DRDY         0x0080
/*! @} */

/*******************************************************************************
 *
 * \brief  Temperature reading structure
 *
 ******************************************************************************/
struct TempReading
{
    /*! Calculated temperature reading */
    long double temp;

    /*! Stores the current object voltage */
    int vObj;

    /*! Stores the current ambient temperature */
    int tDie;
};

void tmp006_init(unsigned char drdyPinEn, unsigned int conversionTime);
void tmp006_wakeup(void);
void tmp006_disable(void);
unsigned char tmp006_ready(void);
struct TempReading tmp006_getTemp(int vObjVal, int tAmbVal);
long double tmp006_calculateTemp(int tDie, int vObj);
int tmp006_read (unsigned char writeByte);
void tmp006_write (unsigned char pointer, unsigned int writeByte);

/*******************************************************************************
 *
 * Mark the end of the C bindings section for C++ compilers.
 *
 ******************************************************************************/
#ifdef __cplusplus
}
#endif

#endif // __TMP006_H__
