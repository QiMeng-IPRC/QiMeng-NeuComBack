#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  double a;
  double b;
  double c;
};
struct TYPE_5__ {
  double y;
  double x;
};
typedef TYPE_1__ Enesim_Point;
typedef TYPE_2__ Enesim_Line;

/* Variables and functions */

void enesim_line_direction_from(Enesim_Line *l, Enesim_Point *p0, double vx,
                                double vy) {
  l->a = vy;
  l->b = -vx;
  l->c = (vx * p0->y) - (vy * p0->x);
}