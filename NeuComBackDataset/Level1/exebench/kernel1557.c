#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef size_t u16;
struct operand {
  size_t dst;
};
struct TYPE_2__ {
  int /*<<< orphan*/ *reg;
};

/* Variables and functions */
size_t LAST_REG;
int /*<<< orphan*/ *memory;
TYPE_1__ vcpu;

void load_ld(u16 value_to_be_loaded, struct operand operand) {
  vcpu.reg[operand.dst] = memory[value_to_be_loaded];
  LAST_REG = operand.dst;
}