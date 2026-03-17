#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int /*<<< orphan*/ f_passable;
};
typedef TYPE_1__ stmt;

/* Variables and functions */
int /*<<< orphan*/ fold_passable_yes;

void init_stmt_noop(stmt *s) { s->f_passable = fold_passable_yes; }