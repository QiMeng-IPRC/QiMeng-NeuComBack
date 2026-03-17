#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_4__;
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_8__ {
  int maxclients;
  scalar_t__ alliedPlayers;
  TYPE_3__ *clients;
  scalar_t__ axisPlayers;
};
struct TYPE_5__ {
  scalar_t__ sessionTeam;
};
struct TYPE_6__ {
  scalar_t__ connected;
};
struct TYPE_7__ {
  TYPE_1__ sess;
  TYPE_2__ pers;
};

/* Variables and functions */
scalar_t__ CON_CONNECTED;
scalar_t__ TEAM_BLUE;
scalar_t__ TEAM_RED;
TYPE_4__ level;

void sortedActivePlayers(void) {
  int i;
  level.axisPlayers = 0;
  level.alliedPlayers = 0;

  for (i = 0; i < level.maxclients; i++) {
    if (level.clients[i].pers.connected != CON_CONNECTED)
      continue;
    if (level.clients[i].sess.sessionTeam == TEAM_RED)
      level.axisPlayers++;
    if (level.clients[i].sess.sessionTeam == TEAM_BLUE)
      level.alliedPlayers++;
  }
}