#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int CurSH2FreqType;
  int DecilineStop;
  int Duf;
  scalar_t__ CycleCountII;
  int /*<<< orphan*/ IsPal;
  scalar_t__ LineCount;
  scalar_t__ DecilineCount;
};

/* Variables and functions */
TYPE_1__ yabsys;

void YabauseChangeTiming(int freqtype) {

  yabsys.DecilineCount = 0;
  yabsys.LineCount = 0;
  yabsys.CurSH2FreqType = freqtype;

  switch (freqtype) {
  case 0:
    if (!yabsys.IsPal)
      yabsys.DecilineStop = 26846587 / 263 / 10 / 60;
    else
      yabsys.DecilineStop = 26846587 / 312 / 10 / 50;

    yabsys.Duf = 26846587 / 100000;

    break;
  case 1:
    if (!yabsys.IsPal)
      yabsys.DecilineStop = 28636360 / 263 / 10 / 60;
    else
      yabsys.DecilineStop = 28636360 / 312 / 10 / 50;

    yabsys.Duf = 28636360 / 100000;
    break;
  default:
    break;
  }

  yabsys.CycleCountII = 0;
}