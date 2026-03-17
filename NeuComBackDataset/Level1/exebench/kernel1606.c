#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int /*<<< orphan*/ intvalue;
};
typedef TYPE_2__ stack_int;
typedef int /*<<< orphan*/ int32;
struct TYPE_4__ {
  int bytesp;
  TYPE_2__ *intsp;
};
struct TYPE_6__ {
  TYPE_1__ stacktop;
};

/* Variables and functions */
TYPE_3__ basicvars;

int32 pop_int(void) {
  stack_int *p = basicvars.stacktop.intsp;

  basicvars.stacktop.bytesp +=
      (((sizeof(stack_int) + sizeof(char *) - 1) & -(int)sizeof(char *)));
  return p->intvalue;
}