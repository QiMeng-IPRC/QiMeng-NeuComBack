#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct dt_interpolation {
  int width;
};

/* Variables and functions */

void fn3(struct dt_interpolation *p1, int *p2) {
  int i = 0, n = 0;
  while (i < 2 * p1->width)
    n = i++;
  *p2 = n;
}