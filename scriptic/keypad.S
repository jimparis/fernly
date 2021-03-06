#include "scriptic.h"
#include "fernvale-gpio.h"

	sc_new "set_kbd", 1, 0, 0

	/* Set pinmux to use as Keypad instead of GPIO */
	sc_write32 0x11100000, 0, GPIO_CTRL_MODE0
	sc_usleep 100
	sc_read32 0x0, 0, GPIO_CTRL_MODE0
	sc_write32 0x11111011, 0, GPIO_CTRL_MODE1
	sc_usleep 100
	sc_read32 0x0, 0, GPIO_CTRL_MODE1

	/* The keyboard controller itself is setup correctly by default,
	 * no initialisation necessary. */

	sc_end	
