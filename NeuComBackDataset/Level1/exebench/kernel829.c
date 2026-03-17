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
  int /*<<< orphan*/ b;
};
struct TYPE_5__ {
  TYPE_1__ sr;
  int /*<<< orphan*/ b;
};
typedef TYPE_2__ CfbBreakerController_t;

/* Variables and functions */

void CfbBreakerController_syncOutputData(CfbBreakerController_t *me) {

  me->b = me->sr.b;
}