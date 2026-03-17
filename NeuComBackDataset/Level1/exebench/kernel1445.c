#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ ut16;

/* Variables and functions */
scalar_t__ UT16_MAX;

int UT16_ADD(ut16 *r, ut16 a, ut16 b) {
  if (UT16_MAX - a < b) {
    return 0;
  }
  if (r) {
    *r = a + b;
  }
  return 1;
}