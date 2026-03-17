#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_9__ TYPE_6__;
typedef struct TYPE_8__ TYPE_2__;
typedef struct TYPE_7__ TYPE_1__;

/* Type definitions */
struct TYPE_7__ {
  scalar_t__ frame;
};
struct TYPE_8__ {
  scalar_t__ nextthink;
  int /*<<< orphan*/ think;
  TYPE_1__ s;
};
typedef TYPE_2__ edict_t;
struct TYPE_9__ {
  scalar_t__ time;
};

/* Variables and functions */
TYPE_6__ level;
int /*<<< orphan*/ misc_satellite_dish_think;

void misc_satellite_dish_use(edict_t *self, edict_t *other,
                             edict_t *activator) {
  self->s.frame = 0;
  self->think = misc_satellite_dish_think;
  self->nextthink = level.time + 0.1;
}