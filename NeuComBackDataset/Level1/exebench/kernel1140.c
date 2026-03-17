#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ ERROR_STACK_EMPTY;
int /*<<< orphan*/ errcode;
int sp;
scalar_t__ *stack;

int cmd_math_subtract() {

  if (sp < 2) {
    errcode = ERROR_STACK_EMPTY;
    return -1;
  }

  stack[sp - 2] = stack[sp - 1] - stack[sp - 2];
  sp = sp - 1;
  return 0;
}