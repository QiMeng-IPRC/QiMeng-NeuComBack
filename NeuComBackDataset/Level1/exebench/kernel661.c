#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned char LEDS_CONF_GREEN;
unsigned char LEDS_CONF_RED;
unsigned char LEDS_PxOUT;

unsigned char leds_arch_get(void) {
  unsigned char leds;
  leds = LEDS_PxOUT;
  return ((leds & LEDS_CONF_RED) ? 0 : 4) | ((leds & LEDS_CONF_GREEN) ? 0 : 1);
}