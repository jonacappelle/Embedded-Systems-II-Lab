/*
 * adcbatt.h
 *
 *  Created on: Nov 19, 2019
 *      Author: jonac
 */

#ifndef ADC_ADC_H_
#define ADC_ADC_H_

#include "stdint.h"

/*************************************/

#define	ADC_FREQ		13000000

volatile uint32_t sample;
volatile uint32_t millivolts;

/*************************************/


void initADC (void);
void ADC0_IRQHandler(void);
void ADC_Batt_Read(void);
void ADC_Batt_print(void);
void ADC_get_batt( uint32_t *batt );

#endif /* ADC_ADC_H_ */
