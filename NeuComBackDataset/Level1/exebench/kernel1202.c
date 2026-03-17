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
  int frame;
};
struct TYPE_6__ {
  int svflags;
  TYPE_1__ s;
  scalar_t__ nextthink;
};
typedef TYPE_2__ edict_t;
struct TYPE_7__ {
  scalar_t__ time;
};

/* Variables and functions */
TYPE_3__ level;

void barrels_fall_nikki_B(edict_t *self) {
  if (self->s.frame < 90) {
    self->nextthink = level.time + 0.1;

    self->s.frame++;

    if (self->s.frame == 1) {
      self->svflags &= ~0x00000001;
    }
  }
}