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
  scalar_t__ update_rate;
  double ctime_last;
};
typedef TYPE_1__ qp_state_t;

/* Variables and functions */
scalar_t__ QP_DO_NEVER;
scalar_t__ QP_DO_ONCE;

int qp_check_update(qp_state_t *state, double ctime) {

  if (state->update_rate == QP_DO_NEVER)
    return 0;

  if ((state->update_rate == QP_DO_ONCE) && (state->ctime_last > 0))
    return 0;

  if (state->ctime_last <= 0) {
    state->ctime_last = ctime;
    return 1;
  }

  if (ctime < state->ctime_last) {
    state->ctime_last = ctime;
    return 1;
  }

  if ((ctime - state->ctime_last) >= state->update_rate) {
    state->ctime_last = ctime;
    return 1;
  }

  return 0;
}