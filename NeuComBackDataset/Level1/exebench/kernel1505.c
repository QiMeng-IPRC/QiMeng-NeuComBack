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
  scalar_t__ x;
  scalar_t__ r;
  scalar_t__ y;
};
struct TYPE_5__ {
  scalar_t__ h;
  scalar_t__ w;
  scalar_t__ y;
  scalar_t__ x;
};
typedef TYPE_1__ MARKER_EXTENT;
typedef scalar_t__ MARKER_DISTANCE;
typedef TYPE_2__ MARKER;

/* Variables and functions */

void lulu_get_marker_array_extent(MARKER *a, int n_markers,
                                  MARKER_EXTENT *ext) {
  if (n_markers > 0) {
    MARKER_DISTANCE ew = ((a)->x - (a)->r);
    MARKER_DISTANCE ee = ((a)->x + (a)->r);
    MARKER_DISTANCE es = ((a)->y - (a)->r);
    MARKER_DISTANCE en = ((a)->y + (a)->r);
    for (int i = 1; i < n_markers; i++) {
      MARKER_DISTANCE w = ((a + i)->x - (a + i)->r);
      MARKER_DISTANCE e = ((a + i)->x + (a + i)->r);
      MARKER_DISTANCE s = ((a + i)->y - (a + i)->r);
      MARKER_DISTANCE n = ((a + i)->y + (a + i)->r);
      if (w < ew)
        ew = w;
      if (e > ee)
        ee = e;
      if (s < es)
        es = s;
      if (n > en)
        en = n;
    }
    ext->x = ew;
    ext->y = es;
    ext->w = ee - ew;
    ext->h = en - es;
  }
}