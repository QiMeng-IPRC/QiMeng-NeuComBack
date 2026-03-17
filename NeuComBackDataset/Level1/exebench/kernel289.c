#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ Lit;

/* Variables and functions */

void fix_ado(long delta, Lit **ado) {
  Lit **p;
  for (p = ado; *p; p++)
    *p += delta;
}