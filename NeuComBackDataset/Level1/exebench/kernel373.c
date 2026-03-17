#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int COM1B0;
int COM1B1;
int TCCR1A;

void timer1_out_B_clear_on_compare_match() {
  TCCR1A |= (1 << COM1B1);
  TCCR1A &= ~(1 << COM1B0);
}