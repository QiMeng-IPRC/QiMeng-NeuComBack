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
  int min_swscor;
  int min_swscor_below_max;
  double min_identity;
};
typedef TYPE_1__ ResultFilter;

/* Variables and functions */

void resultSetFilterData(ResultFilter *p, int sw_abs, int sw_rel,
                         double id_abs) {
  if (p) {
    p->min_swscor = sw_abs;
    p->min_swscor_below_max = sw_rel;
    p->min_identity = id_abs;
  }
}