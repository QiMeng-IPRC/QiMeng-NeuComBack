#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
long last;
long *rtab;
long seed;

void srandom0(long seed0) {
  long a = 16807, m = 2147483647, q = 127773, r = 2836, k;
  int i;

  k = seed0 / q;
  seed = a * (seed0 - k * q) - k * r;
  for (i = 32 + 7; i >= 0; i--) {
    k = seed / q;
    seed = a * (seed - k * q) - k * r;
    if (seed < 0)
      seed += m;
    if (i < 32)
      rtab[i] = seed;
  }
  last = seed;
}