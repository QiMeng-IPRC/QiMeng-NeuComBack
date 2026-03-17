#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ gb_any_breakpoint_used;
scalar_t__ *gb_brkpoint_used;

void GB_DebugClearBreakpointAll(void) {
  for (int i = 0; i < 20; i++) {
    gb_brkpoint_used[i] = 0;
  }

  gb_any_breakpoint_used = 0;
}