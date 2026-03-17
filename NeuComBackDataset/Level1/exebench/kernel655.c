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
  int /*<<< orphan*/ flags;
};
typedef TYPE_1__ ST;

/* Variables and functions */
int /*<<< orphan*/ ST_EMIT_SYMBOL;

void Set_ST_emit_symbol(ST *s) { s->flags |= ST_EMIT_SYMBOL; }