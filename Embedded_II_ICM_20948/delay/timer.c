/*
 * timer.c
 *
 *  Created on: Feb 25, 2020
 *      Author: jonac
 */

#include <timer.h>
#include "em_rtc.h"
#include "rtcdriver.h"
#include "rtcdrv_config.h" // voor millis(); config file

/* Needed to use uintx_t */
#include <stdint.h>
#include <stdbool.h>
#include "stdio.h"

uint32_t millis(void)
{
	return RTCDRV_TicksToMsec(RTCDRV_GetWallClockTicks64());
}

uint32_t micros(void)
{
	return 1000 * RTCDRV_TicksToMsec(RTCDRV_GetWallClockTicks64());
}
