#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ mUINT_8;
struct TYPE_4__ {
  int /*<<< orphan*/ fiq1Select;
};
struct TYPE_5__ {
  TYPE_1__ bits;
};
struct TYPE_6__ {
  TYPE_2__ cpuIntrCntl0;
};

/* Variables and functions */
TYPE_3__ rSFRS;

void mSFRfiq1Sel(mUINT_8 value) { rSFRS.cpuIntrCntl0.bits.fiq1Select = value; }