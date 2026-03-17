#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int ADMUX;
int REFS0;
int REFS1;

void adc_reference_aref() {
  ADMUX &= ~(1 << REFS1);
  ADMUX &= ~(1 << REFS0);
}