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
  int maxcall;
  int epsilon;
  int stepbound;
  int ftol;
  int xtol;
  int gtol;
};
typedef TYPE_1__ lm_control_type;

/* Variables and functions */
int DBL_EPSILON;

void lm_initialize_control(lm_control_type *control) {
  control->maxcall = 100;
  control->epsilon = 30 * DBL_EPSILON;
  control->stepbound = 100.;
  control->ftol = 30 * DBL_EPSILON;
  control->xtol = 30 * DBL_EPSILON;
  control->gtol = 30 * DBL_EPSILON;
}