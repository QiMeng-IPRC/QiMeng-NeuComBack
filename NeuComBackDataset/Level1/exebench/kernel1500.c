#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct tcb {
  int /*<<< orphan*/ scno;
};
struct TYPE_2__ {
  int /*<<< orphan*/ orig_eax;
};

/* Variables and functions */
TYPE_1__ i386_regs;

int arch_get_scno(struct tcb *tcp) {
  tcp->scno = i386_regs.orig_eax;
  return 1;
}