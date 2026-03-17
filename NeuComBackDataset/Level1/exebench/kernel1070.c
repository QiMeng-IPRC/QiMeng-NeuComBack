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
  int x_flag;
  int c_flag;
  unsigned int n_flag;
  unsigned int not_z_flag;
  scalar_t__ v_flag;
};

/* Variables and functions */
TYPE_1__ m68ki_cpu;

void m68k_op_roxl_32_s(void) {
# 3595 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/pascalorama/megadrive-studio/refs/heads/master/gp2/emu/m68k/m68kopnz.c"
  unsigned int *r_dst = &(m68ki_cpu.dar[m68ki_cpu.ir & 7]);
  unsigned int shift = (((m68ki_cpu.ir >> 9) - 1) & 7) + 1;
  unsigned int src = *r_dst;
  unsigned int res = (((((shift) < 32 ? (src) << (shift) : 0) |
                        ((33 - (shift)) < 32 ? (src) >> (33 - (shift)) : 0)) &
                       ~(1 << (shift - 1))) |
                      (((m68ki_cpu.x_flag >> 8) & 1) << (shift - 1)));
  unsigned int new_x_flag = src & (1 << (32 - shift));

  *r_dst = res;

  m68ki_cpu.c_flag = m68ki_cpu.x_flag = (new_x_flag != 0) << 8;
  m68ki_cpu.n_flag = ((res) >> 24);
  m68ki_cpu.not_z_flag = res;
  m68ki_cpu.v_flag = 0;
}