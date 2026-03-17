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
  int val;
};
struct TYPE_5__ {
  TYPE_1__ timer_synci_cfg;
};
typedef TYPE_2__ mcpwm_dev_t;

/* Variables and functions */

void mcpwm_ll_timer_set_timer_synchro(mcpwm_dev_t *mcpwm, int timer,
                                      int timer_sync_id) {
  mcpwm->timer_synci_cfg.val &= ~(0x07 << (timer * 3));
  mcpwm->timer_synci_cfg.val |= (timer_sync_id + 1) << (timer * 3);
}