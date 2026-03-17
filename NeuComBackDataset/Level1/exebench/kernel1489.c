#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_5__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  scalar_t__ nextthink;
  int /*<<< orphan*/ think;
};
typedef TYPE_1__ gentity_t;
struct TYPE_7__ {
  scalar_t__ time;
};

/* Variables and functions */
TYPE_5__ level;
int /*<<< orphan*/ target_shaderremap_think;

void target_shaderremap_use(gentity_t *ent, gentity_t *other,
                            gentity_t *activator) {
  ent->think = target_shaderremap_think;
  ent->nextthink = level.time + 50;
}