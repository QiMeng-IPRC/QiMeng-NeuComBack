#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ src;
struct TYPE_2__ {
  unsigned int *dar;
  int ir;
  unsigned int cyc_shift;
  unsigned int c_flag;
  unsigned int x_flag;
  unsigned int n_flag;
  unsigned int not_z_flag;
  scalar_t__ v_flag;
};

/* Variables and functions */
TYPE_1__ m68ki_cpu;
unsigned int m68ki_remaining_cycles;
unsigned int *m68ki_shift_32_table;

void m68k_op_asr_32_r(void) {
  unsigned int *r_dst = &(m68ki_cpu.dar[m68ki_cpu.ir & 7]);
  unsigned int shift = (m68ki_cpu.dar[(m68ki_cpu.ir >> 9) & 7]) & 0x3f;
  unsigned int src = *r_dst;
  unsigned int res = src >> shift;

  if (shift != 0) {
    m68ki_remaining_cycles -= (shift << m68ki_cpu.cyc_shift);

    if (shift < 32) {
      if (((src) & 0x80000000))
        res |= m68ki_shift_32_table[shift];

      *r_dst = res;

      m68ki_cpu.c_flag = m68ki_cpu.x_flag = (src >> (shift - 1)) << 8;
      m68ki_cpu.n_flag = ((res) >> 24);
      m68ki_cpu.not_z_flag = res;
      m68ki_cpu.v_flag = 0;
      return;
    }

    if (((src) & 0x80000000)) {
      *r_dst = 0xffffffff;
      m68ki_cpu.c_flag = 0x100;
      m68ki_cpu.x_flag = 0x100;
      m68ki_cpu.n_flag = 0x80;
      m68ki_cpu.not_z_flag = 0xffffffff;
      m68ki_cpu.v_flag = 0;
      return;
    }

    *r_dst = 0;
    m68ki_cpu.c_flag = 0;
    m68ki_cpu.x_flag = 0;
    m68ki_cpu.n_flag = 0;
    m68ki_cpu.not_z_flag = 0;
    m68ki_cpu.v_flag = 0;
    return;
  }

  m68ki_cpu.c_flag = 0;
  m68ki_cpu.n_flag = ((src) >> 24);
  m68ki_cpu.not_z_flag = src;
  m68ki_cpu.v_flag = 0;
}