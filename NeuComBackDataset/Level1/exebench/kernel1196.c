#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ s32Info;
  int /*<<< orphan*/ pvReceiver;
  int /*<<< orphan*/ pfHdlr;
};
typedef TYPE_1__ NotifyData_t;

/* Variables and functions */

void notify_assign(NotifyData_t *ptSignal, NotifyData_t *ptSlot) {

  ptSignal->pfHdlr = ptSlot->pfHdlr;
  ptSignal->pvReceiver = ptSlot->pvReceiver;
  ptSignal->s32Info = ptSlot->s32Info;
}