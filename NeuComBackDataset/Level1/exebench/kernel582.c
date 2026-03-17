#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ mUINT_16;
struct TYPE_3__ {
  int /*<<< orphan*/ all;
};
struct TYPE_4__ {
  TYPE_1__ stepdownCntl0;
};

/* Variables and functions */
TYPE_2__ rSFRS2;

void mSFR2setStepDnCntl0(mUINT_16 val) { rSFRS2.stepdownCntl0.all |= val; }