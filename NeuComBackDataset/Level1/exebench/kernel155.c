#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ flg_term;
int /*<<< orphan*/ g_flg_cui;

void ena_term_dos(void) {
  if (!g_flg_cui)
    return;

  flg_term++;
}