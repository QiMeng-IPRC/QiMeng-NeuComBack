#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int A;
int B;
unsigned int C;
unsigned int Z;
int cpu_clk;

void mul(void) {
  unsigned res = (A * B) & 0xffff;

  Z = res;
  C = res & 0x80;
  A = res >> 8;
  B = res & 0xff;
  cpu_clk -= 11;
}