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
  unsigned int cyc_shift;
  unsigned int c_flag;
  unsigned int n_flag;
  unsigned int not_z_flag;
  scalar_t__ v_flag;
};

/* Variables and functions */
TYPE_1__ m68ki_cpu;
unsigned int m68ki_remaining_cycles;

void m68k_op_ror_8_r(void) {
  unsigned int *r_dst = &(m68ki_cpu.dar[m68ki_cpu.ir & 7]);
  unsigned int orig_shift = (m68ki_cpu.dar[(m68ki_cpu.ir >> 9) & 7]) & 0x3f;
  unsigned int shift = orig_shift & 7;
  unsigned int src = ((*r_dst) & 0xff);
  unsigned int res = ((((src) >> (shift)) | ((src) << (8 - (shift)))) & 0xff);

  if (orig_shift != 0) {
    m68ki_remaining_cycles -= (orig_shift << m68ki_cpu.cyc_shift);

    *r_dst = ((*r_dst) & ~0xff) | res;
    m68ki_cpu.c_flag = src << (8 - ((shift - 1) & 7));
    m68ki_cpu.n_flag = (res);
    m68ki_cpu.not_z_flag = res;
    m68ki_cpu.v_flag = 0;
    return;
  }

  m68ki_cpu.c_flag = 0;
  m68ki_cpu.n_flag = (src);
  m68ki_cpu.not_z_flag = src;
  m68ki_cpu.v_flag = 0;
}