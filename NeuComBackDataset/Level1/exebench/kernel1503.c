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
struct TYPE_3__ {
  int opcode;
};
struct TYPE_4__ {
  TYPE_1__ base;
};
typedef int /*<<< orphan*/ PegVMInstruction;
typedef TYPE_2__ ISTOREp2;
typedef int /*<<< orphan*/ ByteCodeLoader;

/* Variables and functions */

void Emit_STOREp2(PegVMInstruction *inst, ByteCodeLoader *loader) {
  ISTOREp2 *ir = (ISTOREp2 *)inst;
  ir->base.opcode = 26;
}