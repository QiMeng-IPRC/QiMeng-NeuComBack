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
  double xbar;
  double dx;
  double ybar;
  double dy;
  double zbar;
  double dz;
};

/* Variables and functions */
TYPE_1__ *MyGraph;

void scale3d(double x, double y, double z, float *xp, float *yp, float *zp) {
  *xp = (x - MyGraph->xbar) * MyGraph->dx;
  *yp = (y - MyGraph->ybar) * MyGraph->dy;
  *zp = (z - MyGraph->zbar) * MyGraph->dz;
}