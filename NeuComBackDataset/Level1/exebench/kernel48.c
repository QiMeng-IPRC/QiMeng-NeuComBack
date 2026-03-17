#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ u16;
struct TYPE_2__ {
  int /*<<< orphan*/ start;
};

/* Variables and functions */
TYPE_1__ *Timer;

void GBA_TimerSetStart0(u16 val) { Timer[0].start = val; }