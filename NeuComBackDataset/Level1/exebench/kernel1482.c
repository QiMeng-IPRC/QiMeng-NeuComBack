#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct bezier_t {
  double x1;
  double x2;
  double x3;
  double x4;
  double y1;
  double y2;
  double y3;
  double y4;
};

/* Variables and functions */

void deltaBRZ(struct bezier_t *bezier, float t, float *x, float *y) {
  double B0 = -3 + 6 * t - 3 * t * t;
  double B1 = 3 - 12 * t + 9 * t * t;
  double B2 = 6 * t - 9 * t * t;
  double B3 = 3 * t * t;

  *x = bezier->x1 * B0 + bezier->x2 * B1 + bezier->x3 * B2 + bezier->x4 * B3;
  *y = bezier->y1 * B0 + bezier->y2 * B1 + bezier->y3 * B2 + bezier->y4 * B3;
}