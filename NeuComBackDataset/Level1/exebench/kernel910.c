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
typedef int /*<<< orphan*/ gx_device;
struct TYPE_5__ {
  long x;
  long y;
};
struct TYPE_6__ {
  long x;
  long y;
};
struct TYPE_7__ {
  TYPE_1__ q;
  TYPE_2__ p;
};
typedef TYPE_3__ gs_fixed_rect;

/* Variables and functions */
int ARCH_LOG2_SIZEOF_LONG;

void gx_get_largest_clipping_box(gx_device *dev, gs_fixed_rect *pbox) {
  pbox->p.x = (-1L << ((1 << ARCH_LOG2_SIZEOF_LONG) * 8 - 1));
  pbox->p.y = (-1L << ((1 << ARCH_LOG2_SIZEOF_LONG) * 8 - 1));
  pbox->q.x = (~(-1L << ((1 << ARCH_LOG2_SIZEOF_LONG) * 8 - 1)));
  pbox->q.y = (~(-1L << ((1 << ARCH_LOG2_SIZEOF_LONG) * 8 - 1)));
}