#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ complex_t;

/* Variables and functions */

void swap_cmplx(complex_t *a, complex_t *b) {
  complex_t tmp;

  tmp = *a;
  *a = *b;
  *b = tmp;
}