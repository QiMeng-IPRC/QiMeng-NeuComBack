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
struct TYPE_4__ {
  int x;
  int n;
  int z;
  int v;
  int c;
};
struct TYPE_3__ {
  int sr;
  int t1;
  int t0;
  int s;
  int m;
  int intmask;
};

/* Variables and functions */
TYPE_2__ regflags;
TYPE_1__ regs;

void MakeSR(void) {
  regs.sr =
      ((regs.t1 << 15) | (regs.t0 << 14) | (regs.s << 13) | (regs.m << 12) |
       (regs.intmask << 8) | ((regflags.x) << 4) | ((regflags.n) << 3) |
       ((regflags.z) << 2) | ((regflags.v) << 1) | (regflags.c));
}