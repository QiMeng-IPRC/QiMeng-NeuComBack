#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned char aa;
unsigned char bb;
unsigned char cc;
unsigned char dd;
unsigned char ee;

void leds_name_repaint(void) {
  unsigned char an;
  unsigned char dg = aa;
  unsigned char s = 0;

  for (an = 0; an < 5; an++) {
    s = ((long)aa >> 1) > 0;
    if (s) {
      aa += dg + 1;
      bb += dg + 2;
      cc += dg + 3;
      dd += dg + 4;
      ee += dg + 5;
    }
  }
}