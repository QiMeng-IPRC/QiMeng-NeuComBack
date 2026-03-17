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
  int flags;
  char *ainodeText;
  int /*<<< orphan*/ ainode;
  scalar_t__ give_health_time;
};
typedef TYPE_1__ bot_state_t;

/* Variables and functions */
int /*<<< orphan*/ AINode_MP_MedicGiveHealth;

void AIEnter_MP_MedicGiveHealth(bot_state_t *bs) {
  bs->give_health_time = 0;
  bs->flags &= ~64;
  bs->ainode = AINode_MP_MedicGiveHealth;
  bs->ainodeText = "AINode_MP_MedicGiveHealth";
}