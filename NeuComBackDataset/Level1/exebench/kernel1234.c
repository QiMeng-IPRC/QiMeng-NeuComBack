#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float fc_acc;

void calculateAccZLowPassFilterRCTimeConstant(float accz_lpf_cutoff) {
  fc_acc = 0.5f / (3.14159265358979323846f * accz_lpf_cutoff);
}