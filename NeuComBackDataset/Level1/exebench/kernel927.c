#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ Value;
};
struct TYPE_5__ {
  TYPE_1__ plantProc;
  int /*<<< orphan*/ Value;
};
typedef TYPE_2__ Plant_t;

/* Variables and functions */

void Plant_syncOutputData(Plant_t *me) { me->Value = me->plantProc.Value; }