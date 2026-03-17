#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int CLKPCE;
int CLKPR;
int DDC5;
int DDRC;
int DDRD;

void sound_init() {
  CLKPR = (1 << CLKPCE);
  CLKPR = 0b00000011;
  DDRD = 0xFF;
  DDRC = (1 << DDC5);
}