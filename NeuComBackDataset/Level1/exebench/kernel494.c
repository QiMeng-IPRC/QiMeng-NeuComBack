#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  scalar_t__ nextthink;
  int /*<<< orphan*/ think;
};
typedef TYPE_1__ edict_t;
struct TYPE_7__ {
  scalar_t__ time;
};

/* Variables and functions */
int /*<<< orphan*/ cutA_A_final;
TYPE_2__ level;

void cutA_A_trigger(edict_t *ent, edict_t *other, edict_t *activator) {
  ent->think = cutA_A_final;
  ent->nextthink = level.time + 0.1;
}