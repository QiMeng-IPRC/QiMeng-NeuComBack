#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct vreg {
  int idx;
  scalar_t__ is_float;
};

/* Variables and functions */
int N_SCRATCH_REGS_I;

void impl_scratch_to_reg(int scratch, struct vreg *r) {
  r->idx = scratch - (r->is_float ? N_SCRATCH_REGS_I : 0);
}