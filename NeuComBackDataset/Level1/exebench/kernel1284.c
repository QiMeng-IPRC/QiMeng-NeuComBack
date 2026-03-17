#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float *result;

int verify_benchmark(int unused) {
  float exp[] = {1.41421353816986083984375, 1.73205077648162841796875,
                 2.2360680103302001953125,  2.4494898319244384765625,
                 2.6457512378692626953125,  2.8284270763397216796875};

  int i;
  for (i = 0; i < 6; i++)
    if (result[i] != exp[i])
      return 0;
  return 1;
}