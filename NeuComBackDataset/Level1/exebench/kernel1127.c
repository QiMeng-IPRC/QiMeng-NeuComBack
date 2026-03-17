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
struct TYPE_3__ {
  int /*<<< orphan*/ limit;
  int /*<<< orphan*/ base;
};
struct TYPE_4__ {
  TYPE_1__ seg_ss;
};

/* Variables and functions */
TYPE_2__ cpu_state;
int /*<<< orphan*/ oldss;
int /*<<< orphan*/ oldsslimit;

void restore_stack() {
  cpu_state.seg_ss.base = oldss;
  cpu_state.seg_ss.limit = oldsslimit;
}