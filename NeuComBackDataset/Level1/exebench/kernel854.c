#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ integer;
struct TYPE_2__ {
  int ip;
  int /*<<< orphan*/ *stack;
};

/* Variables and functions */
TYPE_1__ b_;

int fpop_(integer *i__) {

  *i__ = b_.stack[b_.ip - 1];
  --b_.ip;
  return 0;
}