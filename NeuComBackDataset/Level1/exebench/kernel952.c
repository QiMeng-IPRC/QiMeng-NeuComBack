#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_12__ TYPE_6__;
typedef struct TYPE_11__ TYPE_5__;
typedef struct TYPE_10__ TYPE_4__;
typedef struct TYPE_9__ TYPE_3__;
typedef struct TYPE_8__ TYPE_2__;
typedef struct TYPE_7__ TYPE_1__;

/* Type definitions */
struct TYPE_7__ {
  scalar_t__ *stats;
};
struct TYPE_8__ {
  float fov;
  TYPE_1__ pmove;
};
struct TYPE_12__ {
  TYPE_2__ predictedPlayerState;
};
struct TYPE_11__ {
  int value;
};
struct TYPE_10__ {
  size_t playerNum;
  TYPE_3__ *clientInfo;
  int /*<<< orphan*/ demoPlaying;
};
struct TYPE_9__ {
  float fov;
};

/* Variables and functions */
size_t PM_STAT_ZOOMTIME;
TYPE_6__ cg;
TYPE_5__ *cg_zoomSens;
TYPE_4__ cgs;

float CG_SetSensitivityScale(const float sens) {
  float sensScale = 1.0f;

  if (!cgs.demoPlaying && sens &&
      (cg.predictedPlayerState.pmove.stats[PM_STAT_ZOOMTIME] > 0)) {
    if (cg_zoomSens->value)
      return cg_zoomSens->value / sens;

    return (cg.predictedPlayerState.fov / cgs.clientInfo[cgs.playerNum].fov);
  }

  return sensScale;
}