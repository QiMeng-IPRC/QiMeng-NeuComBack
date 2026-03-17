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
  int target;
  scalar_t__ integral;
};
typedef TYPE_1__ PidState;

/* Variables and functions */

void pidSetTarget(PidState *state, int target) {
  if (state->target != target) {
    state->target = target;
    state->integral = 0;
  }
}