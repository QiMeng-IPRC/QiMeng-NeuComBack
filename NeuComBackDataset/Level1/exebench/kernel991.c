#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ line_num;
};
struct TYPE_6__ {
  TYPE_1__ _base;
};
struct TYPE_7__ {
  TYPE_2__ _base;
};
typedef TYPE_3__ St_raise;
typedef int /*<<< orphan*/ Returncode;

/* Variables and functions */
int /*<<< orphan*/ OK;

Returncode St_raise_parse(St_raise *self) {
  self->_base._base.line_num = self->_base._base.line_num - 1;
  return OK;
}