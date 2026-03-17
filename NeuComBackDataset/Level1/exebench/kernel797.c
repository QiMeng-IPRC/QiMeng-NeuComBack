#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  float a;
};
struct TYPE_6__ {
  TYPE_1__ dp;
};
struct TYPE_7__ {
  TYPE_2__ p;
  int /*<<< orphan*/ type;
};
typedef TYPE_3__ BForce;

/* Variables and functions */
int /*<<< orphan*/ BODY_FORCE_DP;

void bforce_set_dp(float a, BForce *p) {
  p->type = BODY_FORCE_DP;
  p->p.dp.a = a;
}