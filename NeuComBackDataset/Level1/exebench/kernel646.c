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
  unsigned int *dar;
  int ir;
};

/* Variables and functions */
TYPE_1__ m68ki_cpu;

void m68k_op_subq_32_a(void) {
  unsigned int *r_dst = &((m68ki_cpu.dar + 8)[m68ki_cpu.ir & 7]);

  *r_dst = (*r_dst - ((((m68ki_cpu.ir >> 9) - 1) & 7) + 1));
}