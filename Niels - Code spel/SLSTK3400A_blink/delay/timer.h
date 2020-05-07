/*
 * timer.h
 *
 *  Created on: Feb 25, 2020
 *      Author: jonac
 */

#ifndef DELAY_TIMER_H_
#define DELAY_TIMER_H_

/* Needed to use uintx_t */
#include <stdint.h>
#include <stdbool.h>
#include "stdio.h"

uint32_t millis(void);
uint32_t micros(void);


#endif /* DELAY_TIMER_H_ */
