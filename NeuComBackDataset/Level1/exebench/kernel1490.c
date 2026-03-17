#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ klong;
struct TYPE_4__ {
  int /*<<< orphan*/ i64;
};
struct TYPE_5__ {
  TYPE_1__ rv;
  scalar_t__ type;
};
typedef TYPE_2__ kVar;
typedef scalar_t__ kType;

/* Variables and functions */

void k_var_set_long(kVar *p, klong o) {
  p->type = ((kType)6);
  p->rv.i64 = o;
}