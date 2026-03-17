#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int ddrestart;

void inc_ddrestart(void) {
  ddrestart *= 110;
  ddrestart /= 100;

  if (ddrestart >= 1000000)
    ddrestart = 1000000;
}