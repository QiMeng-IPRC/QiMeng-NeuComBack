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
  int /*<<< orphan*/ state;
};
typedef int /*<<< orphan*/ Ltc4151State;
typedef TYPE_1__ Ltc4151;

/* Variables and functions */

void StateIdle(Ltc4151State next, Ltc4151 *device) { device->state = next; }