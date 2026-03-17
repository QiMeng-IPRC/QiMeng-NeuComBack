#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int INT_MAX;

void bitwise_or_combine_accum_help(int x, int *accum) {
  if (x == (INT_MAX - 1)) {
    return;
  }
  if (x == (INT_MAX)) {
    if (*accum == (INT_MAX - 1)) {
      *accum = (INT_MAX);
    }
    return;
  }
  if (*accum == (INT_MAX) || *accum == (INT_MAX - 1)) {
    *accum = x;
  } else {
    *accum |= x;
  }
}