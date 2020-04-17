/* Embedded Systems II: ICM 20948 Tilt Compensated Compass */
/* Made By Jona Cappelle */

/*************************************************/
/****                                     ********/
/******             MAIN FILE               ******/
/****                                     ********/
/*************************************************/

/***************************************************************************//**
 * @file main.c
 * @brief ICM 20948
 * @details Tilt Compensated Compass
 * @version 1.0
 * @author Jona Cappelle
 *******************************************************************************/


/*
 * Measurement of time
 *
 * uint32_t start = millis();
 * uint32_t duration = millis() - start;
 *
 */

/* Include system libraries */
#include <adc.h>
#include "em_system.h"
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_gpio.h"
#include "em_usart.h"
#include "em_rtc.h"
#include "em_adc.h"
#include "em_wdog.h"
#include "rtcdriver.h"
#include "em_core.h"

/* Include home made libraries */
#include "debug_dbprint.h"
#include "delay.h"
#include "ICM20948.h"
#include "interrupt.h"


#include "timer.h"
#include "datatypes.h"
#include "util.h"

/* Need to make a separate file called "rtcdrv_config.h" and place:
 *
 * #define EMDRV_RTCDRV_WALLCLOCK_CONFIG
 * To enable clock functionality
 // */
#include "rtcdrv_config.h" // voor millis();

/* Separate file for Pins and Constants */
#include "pinout.h"

/* Needed to use uintx_t */
#include <stdint.h>
#include <stdbool.h>
//#include "stdio.h"

/* Communication */
#include "I2C.h"
//#include "em_i2c.h"
//#include "i2cspm.h"				/* I2C higher level library to easily setup and use I2C */

/* Sensor fusion */
#include "MadgwickAHRS.h"
#include "math.h"

/* LED's */
#include "bsp.h"

/*************************************************/
/*************************************************/

/* The use of switch - cases makes the code more user friendly */
static volatile APP_State_t appState;

/* Keep the measurement data */
MeasurementData_t data;

/* bool to check if bluetooth is connected */
bool bleConnected = false;
bool IMU_MEASURING = false;
bool IDLE = false;
bool _sleep = false;

uint8_t idle_count = 0;

uint32_t interruptStatus[1];

/* Timer for IMU idle checking */
RTCDRV_TimerID_t IMU_Idle_Timer;


/* Initialize angle */
float angle[1];



/*************************************************/
/*************************************************/
//void CheckIMUidle( void )
//{
//
//	float mean_gyro = (uint8_t) ( data.ICM_20948_gyro[0] + data.ICM_20948_gyro[1] + data.ICM_20948_gyro[2] ) / 3;
//
//	/* Add 1 sec to the count of idle seconds */
//	if( mean_gyro < 0.1 )
//	{
//		idle_count++;
//	}else{ /* If there is movement, reset idle seconds */
//		idle_count = 0;
//	}
//
//	if( idle_count > 60 )
//	{
//		idle_count = 0;
//		/* Dont't check idle state in sleep */
//		RTCDRV_StopTimer( IMU_Idle_Timer );
//		/* Stop generating interrupts */
//		ICM_20948_interruptEnable(false, false);
//		appState = SLEEP;
//		_sleep = true;
//	}
//
///* For visual representation where in the code */
//	BSP_LedToggle(1);
//}
void measure( void )
{

	/* Read all sensors */
//	ICM_20948_gyroDataRead(data.ICM_20948_gyro);
	ICM_20948_accelDataRead(data.ICM_20948_accel);
	ICM_20948_magDataRead(data.ICM_20948_magn);

	ICM_20948_magn_to_angle(data.ICM_20948_magn, angle);


#if DEBUG_DBRPINT == 0
	dbprintlnInt( (int) (angle[0]) );
#endif

	/* Toggle Led when done */
	BSP_LedToggle(0);

	/* Test frequency */
	GPIO_PinOutSet(gpioPortE, 11);
	GPIO_PinOutClear(gpioPortE, 11);
}





/**************************************************************************//**
 * @brief
 *   Main
 *
 *****************************************************************************/
int main(void)
{

	/* Start with initialization */
	appState = INIT;

	/* Infinite loop */
	while (1)
	{
		switch (appState)
		{
		/***************************/
		case SYS_IDLE:
		{
			/* Wait in EM2 */
//			EMU_EnterEM2(true);

		}
			break;
		/***************************/
		case INIT:
		{
			/* Chip errata */
			CHIP_Init();

			/* FULL SPEED :), this is not done automatically */
			CMU_ClockSelectSet(cmuClock_HF, cmuSelect_HFXO);

			/* Set output pin to check frequency of execution */
			GPIO_PinModeSet(gpioPortE, 11, gpioModePushPull, 0);

			/* Leds on development board */
			BSP_LedsInit();

			/* Setup printing to virtual COM port, w */
#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
			dbprint_INIT(USART1, 4, true, false);
#endif /* DEBUG_DBPRINT */

			/* Timer init */
			RTCDRV_Init();
			RTCDRV_AllocateTimer(&IMU_Idle_Timer);

			/* Initialize ICM_20948 + SPI interface */
			ICM_20948_Init();
			//ICM_20948_Init_SPI();

			/* Initialize GPIO interrupts on port C 2 */
			initGPIO_interrupt();

			/* Initialize ADC to read battery voltage */
			initADC();
			ADC_get_batt(data.batt);

#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
			dbprintln("INIT");
#endif /* DEBUG_DBPRINT */

			/* Set interrupt to trigger every 100ms when the data is ready */
			IMU_MEASURING = true;
			ICM_20948_interruptEnable(true, false);

			/* Fancy LED's to check execution of program */
			for(uint8_t i=0; i<8; i++)
			{
				BSP_LedSet(0);
				BSP_LedSet(1);
				delay(100);
				BSP_LedClear(0);
				BSP_LedClear(1);
				delay(100);
			}

			/* Timer for checking if IMU is idle */
//			  RTCDRV_StartTimer( IMU_Idle_Timer, rtcdrvTimerTypePeriodic, 1000, (RTCDRV_Callback_t)CheckIMUidle, NULL);

			appState = SYS_IDLE;
		}
			break;
			/***************************/
		case SENSORS_READ:
		{

			measure();

			/* If imu is idle, give it the chance to go to sleep */
//			if(!_sleep)
//			{
				appState = SYS_IDLE;
//			}
		}
			break;
			/***************************/
		case BATT_READ:
		{
			ADC_Batt_Read();
			ADC_get_batt(data.batt);

#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
			dbprintln("BATT_READ");
#endif /* DEBUG_DBPRINT */

			appState = SYS_IDLE;
		}
			break;
			/***************************/
		case SLEEP:
		{
			//RTCDRV_StartTimer( IMU_Idle_Timer, rtcdrvTimerTypeOneshot, 2000, test, NULL);



			/* Wake on motion: 50 mg's (0.05 G) */
			ICM_20948_wakeOnMotionITEnable(true, 50, 50);
			delay(100);

			/* Disable Systicks before going to sleep */
			EMU_EnterEM2(true);


			///////////////////////////////////////////
			/* When waking up, initialize everything */
			///////////////////////////////////////////

			_sleep = false;

			ICM_20948_wakeOnMotionITEnable(true, 50, 50);

			uint8_t temp[1];

		    /* Make sure ICM_20948 is not in sleep mode */
			ICM_20948_sleepModeEnable( false );
			delay(100);

			/* Enable all ICM_20948 sensors */
			ICM_20948_sensorEnable(true, true, true);
			delay(100);

			/* Set ICM_20948 gyro and accel sample rate to 50Hz */
			ICM_20948_sampleRateSet(50);

			/* Set full scale range: gyro & accel */
			ICM_20948_gyroFullscaleSet(ICM_20948_GYRO_FULLSCALE_250DPS);
			ICM_20948_accelFullscaleSet(ICM_20948_ACCEL_FULLSCALE_2G);

			/* Setup 50us interrupt */
			ICM_20948_latchEnable(true);

		    // TODO bandwidth gyro + accel


		    /* Auto select best available clock source PLL if ready, else use internal oscillator */
		    ICM_20948_registerWrite(ICM_20948_REG_PWR_MGMT_1, ICM_20948_BIT_CLK_PLL);
		    delay(100);


			/* Magnetometer */
			/* IIC passtrough: magnetometer can be accessed on IIC bus */
			ICM_20948_registerWrite(ICM_20948_REG_INT_PIN_CFG, 0x02);
			delay(100);

			/* Reset magnetometer */
			ICM_20948_write_mag_register(0x32, 0x01);
			delay(100);

		    /* Read AK09916 "Who am I" register */
		    ICM_20948_read_mag_register(AK09916_REG_WHO_AM_I, 1, temp);

		    /* Check if AK09916 "Who am I" register was successfully read */
		    if (temp[0] == AK09916_DEVICE_ID) {
		#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
		    	dbprint("AK09916 WHOAMI OKE");
		#endif /* DEBUG_DBPRINT */

		    }

		    delay(1000);

		    /* Configure magnetometer */
		    ICM_20948_set_mag_mode(AK09916_MODE_100HZ);
		    delay(100);

			ICM_20948_read_mag_register(0x31, 1, temp);
			delay(100);

			/* Update data by reading through till ST2 register */
			ICM_20948_read_mag_register(0x11, 8, temp);
			delay(100);


			/* Timer for checking if IMU is idle */
//			RTCDRV_StartTimer( IMU_Idle_Timer, rtcdrvTimerTypePeriodic, 1000, (RTCDRV_Callback_t)CheckIMUidle, NULL);

			/* Set interrupt to trigger every 100ms when the data is ready */
			IMU_MEASURING = true;
			ICM_20948_interruptEnable(true, false);

			appState = SYS_IDLE;

#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
			dbprintln("SLEEP");
#endif /* DEBUG_DBPRINT */
		}
			break;
			/***************************/
		case CALLIBRATE:
		{
#if DEBUG_DBPRINT == 1 /* DEBUG_DBPRINT */
			dbprintln("CALLIBRATE");
#endif /* DEBUG_DBPRINT */

			ICM_20948_accelGyroCalibrate(data.accelCal, data.gyroCal);
			ICM_20948_calibrate_mag(data.magOffset, data.magScale);

			appState = SYS_IDLE;
		}
			break;
			/***************************/
		} //switch

	} //while
} //main








/**************************************************************************//**
 * @brief GPIO Even IRQ for pushbuttons on even-numbered pins
 *****************************************************************************/
void GPIO_EVEN_IRQHandler(void)
{
	// Clear all even pin interrupt flags
	GPIO_IntClear(0x5555);
#if DEBUG_DBPRINTs == 1 /* DEBUG_DBPRINT */
	dbprint("Interrupt fired! 1");
#endif /* DEBUG_DBPRINT */

//	measure_send();

//	ICM_20948_interruptStatusRead(interruptStatus);
//
//	/* AND with mask to check only bit 4 of byte 1 */
//	if( (interruptStatus[0] & 8) == 8 ) /* If interrupt is bit WOM interrupt */
//	{
//		appState = SLEEP;
//	}else{

	/* If sensor is not trying to sleep, read sensors
	 * Otherwise bug when trying to sleep but still last interrupts occurring, sensor won't go to sleep
	 */
//	if(appState != SLEEP)
//	{
		appState = SENSORS_READ;
//	}


//	}
}

/**************************************************************************//**
 * @brief GPIO Odd IRQ for pushbuttons on odd-numbered pins
 *****************************************************************************/
void GPIO_ODD_IRQHandler(void)
{
	// Clear all odd pin interrupt flags
	GPIO_IntClear(0xAAAA);

#if DEBUG_DBPRINTs == 1 /* DEBUG_DBPRINT */
	dbprint("Interrupt fired! 2");
#endif /* DEBUG_DBPRINT */

//	appState = SENSORS_READ;
}




