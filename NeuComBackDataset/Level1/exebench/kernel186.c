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
  int regPtr;
  int /*<<< orphan*/ *RAM;
  int /*<<< orphan*/ A;
};

/* Variables and functions */
TYPE_1__ R;

void mov_a_r2(void) { R.A = R.RAM[R.regPtr + 2]; }