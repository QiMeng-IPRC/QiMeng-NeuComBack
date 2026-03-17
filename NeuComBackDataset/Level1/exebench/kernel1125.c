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
  scalar_t__ pausetime;
  int aiflags;
};
struct TYPE_6__ {
  TYPE_1__ monsterinfo;
};
typedef TYPE_2__ edict_t;
struct TYPE_7__ {
  scalar_t__ time;
};

/* Variables and functions */
TYPE_3__ level;

void chick_duck_hold(edict_t *self) {
  if (level.time >= self->monsterinfo.pausetime)
    self->monsterinfo.aiflags &= ~0x00000080;
  else
    self->monsterinfo.aiflags |= 0x00000080;
}