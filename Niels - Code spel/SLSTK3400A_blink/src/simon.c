#include "em_device.h"
#include <stdint.h>
#include <stdbool.h>
#include "stdlib.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_gpio.h"
#include "bsp.h"
#include <time.h>
#include "I2C.h"   //used for communication with the displays
#include "delay.h" //so we can use the delay() function
#include "rtcdrv_config.h" //so we can use the millis() function
#include "math.h"

int buttons[] = {0,1,2,3};	//pins I use for buttons
int leds[] = {4,5,6,7};		//pins I use for the leds
int latestIndex = 0;		//to add symbol on successful repetition of sequence
int sequence[100];			//we take a size of 100 which means we assume no one gets a score higher than that
clock_t currentTime, previousTime;//will be used to measure time passed during parts of program
int score = 0;

//different states of the game
const int start = 0;		//const is used to make sure these values aren't changed
const int playing = 1;
const int gameOver = 2;
int gameState;				//to keep track of state
bool running = true;

void setup(){
	for(int i=0; i<4; i++){
		GPIO_PinModeSet(gpioPortD, leds[i], gpioModePushPull, 0);
		GPIO_PinModeSet(gpioPortF, buttons[i], gpioModeInput, 0);
	}
	gameState = start;
}

void allOff()
{
	for(int i=0; i<4; i++){
		GPIO_PinOutClear(gpioPortD, leds[i]);
	}
}

void allOn()
{
	for(int i=0; i<4; i++){
		GPIO_PinOutSet(gpioPortD, leds[i]);
	}
}

void blinkLeds(int numberOfTimes)
{
	for(int i=0; i<numberOfTimes; i++){
		allOn();
		delay(300);
		allOff();
		delay(300);
	}
}

int giveScore()
{
	return score;
}

int waitForButton(int delay)
{
	int buttonPressed = -1;
	int input;
	bool buttonBackup = false;
	currentTime = (clock()/CLOCKS_PER_SEC) * 1000;		//gives ms passed since start program
	previousTime = currentTime;	//to know when we started our loop

	//keep going through loop until delay time has passed
	while ((currentTime - previousTime < delay) & (buttonBackup == false)){
		for(int i=0; (i<4) & (buttonBackup==false); i++){
			if(GPIO_PinOutGet(gpioPortF, buttons[i])== 1){
				buttonPressed = i;

				//the next loop is to determine when the button is let go
				while((currentTime - previousTime < delay) & (buttonBackup==false)){
							input = GPIO_PinOutGet(gpioPortF, buttons[i]);
							if(input==0){
								buttonBackup = true;
							}
							currentTime = (clock()/CLOCKS_PER_SEC) * 1000;
			}
				if(currentTime - previousTime > delay){
					buttonPressed = -1;
				}
		}
		}
		currentTime = (clock()/CLOCKS_PER_SEC) * 1000;
	}
	return buttonPressed;
}

void flashLeds()
{
	sequence[latestIndex] = rand()%4;	//generates number from 0 to 3
	score = latestIndex;
	latestIndex = latestIndex + 1;
	for(int i = 0; i<latestIndex; i++){
		delay(300);
		GPIO_PinOutSet(gpioPortD, leds[sequence[i]]);
		delay(700);
		GPIO_PinOutClear(gpioPortD, leds[sequence[i]]);
	}
}

void inputSequence()
{
	int buttonPressed;
	bool mistake = false;
	for(int i=0; (i<latestIndex) & (mistake==false); i++){
		buttonPressed = waitForButton(1000);
		if((buttonPressed==-1) | (buttonPressed!=sequence[i])){
			mistake = true;
			gameState = gameOver;
		}
	}
}

void waitToStart()
{
	int buttonPressed = -1;
	allOff();			//all leds on until start game
	for(int i=0; i<4; i++){
		if(buttonPressed == -1){
			GPIO_PinOutSet(gpioPortD, leds[i]);
			buttonPressed = waitForButton(1000);
			GPIO_PinOutClear(gpioPortD, leds[i]);
		}
		if(buttonPressed != -1){
			delay(2000);
			latestIndex = 0;
			gameState = playing;
		}
	}
}

int main()
{
	while(running==true){
		if(gameState==start){
			waitToStart();
		}
		else if(gameState==playing){
			flashLeds();			//show sequence that has to be repeated
			inputSequence();		//process what the user is inputting
		}
		else if(gameState==gameOver){
			blinkLeds(5);
			gameState = start;
			giveScore();
			score = 0;
		}
	}
	return score;
}
