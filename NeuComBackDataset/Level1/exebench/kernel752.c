#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned long *BITMASK_31;
unsigned long *BITMASK_LOWER1;
unsigned long *BITMASK_UPPER1_;

void BARRAY_reset_interval(unsigned long *a, int x1, int x2) {
  int x = x1 / 32, i, xx = x2 / 32;
  if (x == xx) {
    for (i = x1 % 32; i <= x2 % 32; i++)
      ((a)[(i) / 32] &= BITMASK_31[(i) % 32]);
  } else {
    a[x] &= BITMASK_LOWER1[x1 % 32];
    x++;
    for (; x < xx; x++)
      a[x] = 0;
    a[xx] &= BITMASK_UPPER1_[x2 % 32];
  }
}