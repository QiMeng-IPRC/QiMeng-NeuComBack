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
  float a;
};
struct TYPE_5__ {
  TYPE_1__ acc;
};
typedef TYPE_2__ MotionState;

/* Variables and functions */

void set_acceleration_a(MotionState *state, float a) { state->acc.a = a; }