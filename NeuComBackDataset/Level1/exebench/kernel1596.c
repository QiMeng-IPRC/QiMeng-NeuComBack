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
  int *ops;
  int memsz;
  int /*<<< orphan*/ *mem;
};

/* Variables and functions */
TYPE_1__ ivm;

int op_div() {
  unsigned long buf;

  if (ivm.ops[0] >= ivm.memsz - 1)
    return (-1);

  if (ivm.ops[1] >= ivm.memsz - 3)
    return (-1);

  if (ivm.ops[2] >= ivm.memsz - 3)
    return (-1);

  if (*((unsigned long *)&ivm.mem[ivm.ops[2]]) == 0)
    return (-5);

  buf = *((unsigned long *)&ivm.mem[ivm.ops[1]]);
  buf /= *((unsigned long *)&ivm.mem[ivm.ops[2]]);
  *((unsigned long *)&ivm.mem[ivm.ops[0]]) = buf;

  return 0;
}