#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ ags_t;

/* Variables and functions */
int /*<<< orphan*/ *BacktracesAGS;
int /*<<< orphan*/ DebugModeAGS;
int LatestBacktraceAGS;
int NumBacktracesAGS;

void AddBacktraceAGS(ags_t *State) {
  if (!DebugModeAGS)
    return;
  LatestBacktraceAGS++;
  if (LatestBacktraceAGS >= 50)
    LatestBacktraceAGS = 0;
  if (NumBacktracesAGS < 50)
    NumBacktracesAGS++;
  BacktracesAGS[LatestBacktraceAGS] = *State;
}