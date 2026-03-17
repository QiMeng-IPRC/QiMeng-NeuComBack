#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  double x;
  double R;
  double vx;
  double fx;
  double p;
};
typedef TYPE_1__ grain;

/* Variables and functions */
double kn;
double nu;

double compute_force_right_wall(int i, grain *g, double wright) {
  double dn = wright - (g[i].x + g[i].R);

  if (dn < 0.0) {
    double vn, fn;

    vn = -g[i].vx;

    fn = -kn * dn - nu * vn;

    g[i].fx -= fn;

    g[i].p += fn;

    return fn;
  }
  return 0.0;
}