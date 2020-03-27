/*
 * adcbatt.c
 *
 *  Created on: Nov 19, 2019
 *      Author: jonac
 */


/***************************************************************************//**
 * @file adcbatt.c
 * @brief Read battery voltage
 * @version 1.0
 * @author Jona Cappelle
 * ****************************************************************************/

#include <adc.h>
#include "em_adc.h"
#include "em_cmu.h"
#include "debug_dbprint.h"


void initADC (void)
{
  // Enable ADC0 clock
  CMU_ClockEnable(cmuClock_ADC0, true);

  // Declare init structs
  ADC_Init_TypeDef init = ADC_INIT_DEFAULT;
  ADC_InitSingle_TypeDef initSingle = ADC_INITSINGLE_DEFAULT;

  // Modify init structs and initialize
  init.prescale = ADC_PrescaleCalc(ADC_FREQ, 0); // Init to max ADC clock for Series 0
  init.timebase = ADC_TimebaseCalc(0);

  initSingle.diff       = false;        // single ended
  //initSingle.reference  = adcRef2V5;    // internal 2.5V reference
  initSingle.reference  = adcRefVDD;    // vdd reference voltage
  initSingle.resolution = adcRes12Bit;  // 12-bit resolution

  // Select ADC input. See README for corresponding EXP header pin.
  initSingle.input = adcSingleInputCh4;

  ADC_Init(ADC0, &init);
  ADC_InitSingle(ADC0, &initSingle);

  // Enable ADC Single Conversion Complete interrupt
  ADC_IntEnable(ADC0, ADC_IEN_SINGLE);

  // Enable ADC interrupts
  NVIC_ClearPendingIRQ(ADC0_IRQn);
  NVIC_EnableIRQ(ADC0_IRQn);
}


void ADC0_IRQHandler(void)
{
  // Clear the interrupt flag
  ADC_IntClear(ADC0, ADC_IFC_SINGLE);

  // Get ADC result
  sample = ADC_DataSingleGet(ADC0);

  // Calculate input voltage in mV, input voltage reference: 3.3V (3300)
  /* 3.3V --|8.2Meg|--|10Meg|--- GND */
  millivolts = ((sample * 1500) / 4096 ) * ((10 + 8.2 ) / 10);

  // Start next ADC conversion
  /* This is for continuous measurements, not needed */
  /* When we want to read the ADC, we just call ADC_Start(ADC0, adcStartSingle) */
  //ADC_Start(ADC0, adcStartSingle);
}

void ADC_Batt_Read(void)
{
  // Start first conversion
  ADC_Start(ADC0, adcStartSingle);

  /* This part is handled by the Interrupt */

  // Get ADC result
  //sample = ADC_DataSingleGet(ADC0);

  // Calculate input voltage in mV
  /* input voltage: 3.3V used as reference */
  //millivolts = (sample * 3300) / 4096;

}

void ADC_Batt_print(void)
{
#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
	dbprint("Batt:	");
	dbprintInt(millivolts);
#endif /* DEBUG_DBPRINT */
}

void ADC_get_batt( uint32_t *batt )
{
	ADC_Batt_Read();
	batt[0] = millivolts;
}

