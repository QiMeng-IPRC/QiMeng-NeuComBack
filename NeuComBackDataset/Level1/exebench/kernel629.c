#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct gdev_time {
  unsigned long sec;
  unsigned long usec;
  scalar_t__ neg;
};

/* Variables and functions */

void gdev_time_ms(struct gdev_time *ret, unsigned long ms) {
  unsigned long carry = ms / 1000;
  ret->sec = carry;
  ret->usec = (ms - carry * 1000) * 1000;
  ret->neg = 0;
}