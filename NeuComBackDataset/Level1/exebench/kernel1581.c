#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ num;

/* Variables and functions */
int /*<<< orphan*/ ERROR_STACK_FULL;
int /*<<< orphan*/ errcode;
int sp;
int /*<<< orphan*/ *stack;

int cmd_stack_push(num arg) {

  if (sp >= 1028) {
    errcode = ERROR_STACK_FULL;
    return -1;
  }

  stack[sp] = arg;
  sp = sp + 1;
  return 0;
}