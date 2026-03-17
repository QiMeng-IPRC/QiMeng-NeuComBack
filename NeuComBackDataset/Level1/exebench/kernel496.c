#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int rand_state;

float erand(void) {
  static int im = 6075;
  static int ia = 106;
  static int ic = 1283;
  rand_state = (rand_state * ia + ic) % im;
  return ((float)rand_state / (float)im);
}