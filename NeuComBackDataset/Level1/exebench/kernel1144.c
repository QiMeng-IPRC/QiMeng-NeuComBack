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
  int pulsetick;
  int secpertick;
  int pulsepersec;
  int pulseviolence;
  int pulsemobile;
  int pulsecalendar;
};

/* Variables and functions */
TYPE_1__ sysdata;

void update_timers(void) {
  sysdata.pulsetick = sysdata.secpertick * sysdata.pulsepersec;
  sysdata.pulseviolence = 3 * sysdata.pulsepersec;
  sysdata.pulsemobile = 4 * sysdata.pulsepersec;
  sysdata.pulsecalendar = 4 * sysdata.pulsetick;
}