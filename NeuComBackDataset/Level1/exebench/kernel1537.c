#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u64;
typedef int u32;

/* Variables and functions */

void calc_mulu(u32 a, u32 b, u64 *prod_out)

{
  u32 idx = 0;
  u64 prod = 0;

  u64 mand = ((u64)(a));

  u32 mier = b;

# 387 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/csturton/wirepatch/refs/heads/master/system/software/sim_module/simulator.c"

  for (idx = 0; idx < 32; idx++)

  {

    if (mier & 0x1) {
      prod += mand;
    }
    mand <<= 1;

    mier >>= 1;
  }

  *prod_out = prod;
}