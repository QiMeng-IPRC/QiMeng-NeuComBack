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
  unsigned int n_flag;
  unsigned int v_flag;
  unsigned int x_flag;
  unsigned int c_flag;
  unsigned int not_z_flag;
};

/* Variables and functions */
TYPE_1__ m68ki_cpu;

void m68k_op_addq_32_d(void) {
  unsigned int *r_dst = &(m68ki_cpu.dar[m68ki_cpu.ir & 7]);
  unsigned int src = (((m68ki_cpu.ir >> 9) - 1) & 7) + 1;
  unsigned int dst = *r_dst;
  unsigned int res = src + dst;

  m68ki_cpu.n_flag = ((res) >> 24);
  m68ki_cpu.v_flag = (((src ^ res) & (dst ^ res)) >> 24);
  m68ki_cpu.x_flag = m68ki_cpu.c_flag =
      (((src & dst) | (~res & (src | dst))) >> 23);
  m68ki_cpu.not_z_flag = (res);

  *r_dst = m68ki_cpu.not_z_flag;
}