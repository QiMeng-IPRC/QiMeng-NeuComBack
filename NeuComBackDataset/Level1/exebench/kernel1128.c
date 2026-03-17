#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int ADCSRA;
int ADPS0;
int ADPS1;
int ADPS2;

void adc_prescaler_2() {
  ADCSRA &= ~(1 << ADPS2);
  ADCSRA &= ~(1 << ADPS1);
  ADCSRA |= (1 << ADPS0);
}