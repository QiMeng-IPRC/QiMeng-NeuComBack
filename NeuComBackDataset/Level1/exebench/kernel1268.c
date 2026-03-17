#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct processor {
  int pc;
};

/* Variables and functions */

void processor_pc_increment(struct processor *p, int v) {
  p->pc += v;
  if (p->pc > 0x07FF) {
    p->pc = p->pc - 0x07FF;
  }
  return;
}