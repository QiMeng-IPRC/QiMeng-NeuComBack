#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ upd7810_state;

/* Variables and functions */
int INTAN4;
int ITF;
int /*<<< orphan*/ PSW;
int /*<<< orphan*/ SK;

void SKNIT_AN4(upd7810_state *cpustate) {
  if (0 == (ITF & INTAN4))
    PSW |= SK;
  ITF &= ~INTAN4;
}