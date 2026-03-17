#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  double x;
  double y;
  double z;
};
struct TYPE_5__ {
  double x;
  double y;
  double z;
};
struct TYPE_7__ {
  TYPE_2__ c;
  TYPE_1__ b;
};
typedef TYPE_3__ matrix;

/* Variables and functions */

void xrot(matrix *p, double ca, double sa) {
  matrix m = *p;

  p->b.x = ca * m.b.x - sa * m.c.x;
  p->b.y = ca * m.b.y - sa * m.c.y;
  p->b.z = ca * m.b.z - sa * m.c.z;
  p->c.x = sa * m.b.x + ca * m.c.x;
  p->c.y = sa * m.b.y + ca * m.c.y;
  p->c.z = sa * m.b.z + ca * m.c.z;
}