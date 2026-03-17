#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_4__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int frame;
};
struct TYPE_6__ {
  scalar_t__ nextthink;
  TYPE_1__ s;
  int /*<<< orphan*/ takedamage;
};
typedef TYPE_2__ edict_t;
struct TYPE_7__ {
  scalar_t__ time;
};

/* Variables and functions */
int /*<<< orphan*/ DAMAGE_NO;
int /*<<< orphan*/ DAMAGE_YES;
TYPE_4__ level;
int red_team_score;

void redspidernode_think(edict_t *ent) {

  if (red_team_score < 2)
    ent->takedamage = DAMAGE_YES;
  else
    ent->takedamage = DAMAGE_NO;

  ent->s.frame = (ent->s.frame + 1) % 13;
  ent->nextthink = level.time + 0.1;
}