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

int op_not() {
  unsigned short buf;

  if (ivm.ops[0] >= ivm.memsz - 1)
    return (-1);

  if (ivm.ops[1] >= ivm.memsz - 1)
    return (-1);

  buf = *((unsigned short *)&ivm.mem[ivm.ops[1]]);
  *((unsigned short *)&ivm.mem[ivm.ops[0]]) = ~buf;

  return 0;
}