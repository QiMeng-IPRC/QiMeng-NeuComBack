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
  unsigned int n_flag;
  unsigned int v_flag;
  unsigned int x_flag;
  unsigned int c_flag;
  unsigned int not_z_flag;
};

/* Variables and functions */
TYPE_1__ m68ki_cpu;

void m68k_op_add_8_er_d(void) {
  unsigned int *r_dst = &(m68ki_cpu.dar[(m68ki_cpu.ir >> 9) & 7]);
  unsigned int src = (((m68ki_cpu.dar[m68ki_cpu.ir & 7])) & 0xff);
  unsigned int dst = ((*r_dst) & 0xff);
  unsigned int res = src + dst;

  m68ki_cpu.n_flag = (res);
  m68ki_cpu.v_flag = ((src ^ res) & (dst ^ res));
  m68ki_cpu.x_flag = m68ki_cpu.c_flag = (res);
  m68ki_cpu.not_z_flag = ((res) & 0xff);

  *r_dst = ((*r_dst) & ~0xff) | m68ki_cpu.not_z_flag;
}