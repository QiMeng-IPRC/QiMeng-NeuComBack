#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  double x;
  double y;
};

/* Variables and functions */
size_t nPlotpoints;
TYPE_1__ *plotpoints;

void calcplotp(double x, double y, double dx, double dy, double *out) {
  size_t i;
  double distx, disty;

  for (i = 0; i < nPlotpoints; ++i) {
    distx = x - plotpoints[i].x;
    disty = y - plotpoints[i].y;

    if (distx < dx)
      if (distx > -dx)
        if (disty < dy)
          if (disty > -dy) {
            *out = 1;
            break;
          }
  }
}