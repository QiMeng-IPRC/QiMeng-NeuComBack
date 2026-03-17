#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ real;

/* Variables and functions */

void qconjugate(real *a, const real *b) {
  a[0] = -b[0];
  a[1] = -b[1];
  a[2] = -b[2];
  a[3] = b[3];
}