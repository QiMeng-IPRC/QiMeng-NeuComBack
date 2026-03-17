#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ time_t;
struct TYPE_3__ {
  scalar_t__ rate;
  scalar_t__ last_allowed;
  int n_calls_since_last_time;
};
typedef TYPE_1__ ratelim_t;

/* Variables and functions */

int rate_limit_is_ready(ratelim_t *lim, time_t now) {
  if (lim->rate + lim->last_allowed <= now) {
    int res = lim->n_calls_since_last_time + 1;
    lim->last_allowed = now;
    lim->n_calls_since_last_time = 0;
    return res;
  } else {
    if (lim->n_calls_since_last_time <= (16 * 1000 * 1000)) {
      ++lim->n_calls_since_last_time;
    }

    return 0;
  }
}