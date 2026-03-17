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
typedef int /*<<< orphan*/ stack_int;
struct TYPE_5__ {
  int bytesp;
  TYPE_1__ *intsp;
};
struct TYPE_6__ {
  TYPE_2__ stacktop;
  int /*<<< orphan*/ current;
};
struct TYPE_4__ {
  int intvalue;
  int /*<<< orphan*/ itemtype;
};

/* Variables and functions */
int /*<<< orphan*/ STACK_INT;
TYPE_3__ basicvars;

void do_intone(void) {
  basicvars.current++;
  basicvars.stacktop.bytesp -=
      ((sizeof(stack_int) + sizeof(char *) - 1) & -(int)sizeof(char *));
  basicvars.stacktop.intsp->itemtype = STACK_INT;
  basicvars.stacktop.intsp->intvalue = (1);
  ;
}