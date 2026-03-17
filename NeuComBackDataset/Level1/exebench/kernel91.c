#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int u64;
typedef int u32;
typedef size_t u16;
typedef int /*<<< orphan*/ t2;
typedef int t1;
struct TYPE_2__ {
  int *R;
  int CPSR;
};

/* Variables and functions */
TYPE_1__ CPU;

void thumb_cmp(u16 Rd, u16 Rs) {
  u32 t1 = CPU.R[Rd];
  u32 t2 = ~CPU.R[Rs];
  u64 temp = (u64)t1 + (u64)t2 + 1ULL;
  CPU.CPSR &= ~((1 << (30)) | (1 << (29)) | (1 << (31)) | (1 << (28)));
  CPU.CPSR |=
      (((u32)temp) ? 0 : (1 << (30))) | (((u32)temp) & (1 << (31))) |
      ((temp & 0xFFFFFFFF00000000ULL) ? (1 << (29)) : 0) |
      (((((~((t1) | (t2))) & ((u32)temp)) | ((t1) & (t2) & (~((u32)temp)))) >>
        31)
           ? (1 << (28))
           : 0);
}