#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct henon_info {
  double const a;
  double const b;
};

/* Variables and functions */

void henon_map(const struct henon_info *h_info, const double *x, double *y) {
  y[0] = 1 - h_info->a * (x[0] * x[0]) + x[1];
  y[1] = h_info->b * x[0];
}