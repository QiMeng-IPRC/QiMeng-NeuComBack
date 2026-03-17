#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct relax {
  scalar_t__ curr;
  scalar_t__ dst;
  int accel;
};

/* Variables and functions */

void set_duration(struct relax *r, float time) {
  float delta = (r->curr > r->dst) ? r->curr - r->dst : r->dst - r->curr;
  if (time == 0)
    time = 0.00001;
  r->accel = 4 * delta / (time * time);

  if (r->accel < 1.0)
    r->accel = 1.0;
}