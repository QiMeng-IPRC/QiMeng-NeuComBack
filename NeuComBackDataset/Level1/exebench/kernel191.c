#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ symbol_t;

/* Variables and functions */
int /*<<< orphan*/ *ptok;
int /*<<< orphan*/ *tokens;

symbol_t *tok_first(void) {
  ptok = tokens;
  return ptok;
}