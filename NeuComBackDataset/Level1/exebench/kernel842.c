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
  float t;
};
struct TYPE_5__ {
  TYPE_1__ pos;
};
typedef TYPE_2__ MotionState;

/* Variables and functions */

void set_position_t(MotionState *state, float t) { state->pos.t = t; }