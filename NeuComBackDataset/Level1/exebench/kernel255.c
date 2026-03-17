#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef unsigned int res;
struct TYPE_2__ {
  unsigned int *dar;
  int ir;
  int x_flag;
  unsigned int cyc_shift;
  unsigned int c_flag;
  unsigned int n_flag;
  unsigned int not_z_flag;
  scalar_t__ v_flag;
};

/* Variables and functions */
TYPE_1__ m68ki_cpu;
unsigned int m68ki_remaining_cycles;

void m68k_op_roxr_16_r(void) {
  unsigned int *r_dst = &(m68ki_cpu.dar[m68ki_cpu.ir & 7]);
  unsigned int orig_shift = (m68ki_cpu.dar[(m68ki_cpu.ir >> 9) & 7]) & 0x3f;

  if (orig_shift != 0) {
    unsigned int shift = orig_shift % 17;
    unsigned int src = ((*r_dst) & 0xffff);
    unsigned int res =
        (((src | (((m68ki_cpu.x_flag >> 8) & 1) << 16)) >> (shift)) |
         ((src | (((m68ki_cpu.x_flag >> 8) & 1) << 16)) << (17 - (shift))));

    m68ki_remaining_cycles -= (orig_shift << m68ki_cpu.cyc_shift);

    m68ki_cpu.c_flag = m68ki_cpu.x_flag = res >> 8;
    res = ((res) & 0xffff);

    *r_dst = ((*r_dst) & ~0xffff) | res;
    m68ki_cpu.n_flag = ((res) >> 8);
    m68ki_cpu.not_z_flag = res;
    m68ki_cpu.v_flag = 0;
    return;
  }

  m68ki_cpu.c_flag = m68ki_cpu.x_flag;
  m68ki_cpu.n_flag = ((*r_dst) >> 8);
  m68ki_cpu.not_z_flag = ((*r_dst) & 0xffff);
  m68ki_cpu.v_flag = 0;
}