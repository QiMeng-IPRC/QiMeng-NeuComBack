#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  float tv_nsec;
  scalar_t__ tv_sec;
};
struct TYPE_5__ {
  TYPE_1__ t_elapsed;
};
typedef TYPE_2__ fer_timer_t;

/* Variables and functions */

float ferTimerElapsedInSF(const fer_timer_t *t) {
  float time;
  time = t->t_elapsed.tv_nsec / 1000000000.f;
  time += t->t_elapsed.tv_sec;
  return time;
}