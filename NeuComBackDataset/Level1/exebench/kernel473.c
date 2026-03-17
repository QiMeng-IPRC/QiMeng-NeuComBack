#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int TIMER_GAME;
int TIMER_GUI;
int /*<<< orphan*/ g_timerGUI;
int /*<<< orphan*/ g_timerGame;
int /*<<< orphan*/ g_timerInput;
int /*<<< orphan*/ g_timerSleep;
scalar_t__ g_timerTimeout;
int s_timersActive;

void Timer_Tick(void) {
  if ((s_timersActive & TIMER_GUI) != 0)
    g_timerGUI++;
  if ((s_timersActive & TIMER_GAME) != 0)
    g_timerGame++;
  g_timerInput++;
  g_timerSleep++;

  if (g_timerTimeout != 0)
    g_timerTimeout--;
}