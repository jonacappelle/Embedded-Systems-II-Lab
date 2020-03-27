/*
 * util.c
 *
 *  Created on: Mar 11, 2020
 *      Author: jonac
 */

#include <util.h>
#include "stdbool.h"
#include "stdint.h"

bool Check_Equal(uint8_t *arr1, uint8_t *arr2, uint8_t length)
{
	for (uint8_t i = 0; i < length; i++)
	{
		if (arr1[i] != arr2[i])
		{
			return false;
		}
	}
	return true;
}
