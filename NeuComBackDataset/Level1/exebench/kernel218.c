#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int DDRB;
int PORTB;

void kbd19x_caps_led_on(void) {
  DDRB |= (1 << 0);
  PORTB &= ~(1 << 0);
}