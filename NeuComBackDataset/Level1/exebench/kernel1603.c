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
  double min;
  double max;
  scalar_t__ type;
};
typedef TYPE_1__ ProbDesc;

/* Variables and functions */

void FixDist(ProbDesc *pd, double val) {
  ((void)0);
  pd->min = pd->max = val;
  pd->type = 0;
}