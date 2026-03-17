#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int /*<<< orphan*/ pc;
};
typedef TYPE_1__ sMachine;

/* Variables and functions */

void inc(int *op1, int *op2, sMachine *machine) {
  (*op1)++;
  machine->pc++;
}