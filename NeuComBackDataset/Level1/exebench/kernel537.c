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
  scalar_t__ nextthink;
  int /*<<< orphan*/ think;
};
typedef TYPE_1__ gentity_t;
struct TYPE_5__ {
  scalar_t__ time;
};

/* Variables and functions */
int /*<<< orphan*/ G_TripMineThink;
TYPE_2__ level;

void G_TripMinePrime(gentity_t *ent) {
  ent->think = G_TripMineThink;
  ent->nextthink = level.time + 500;
}