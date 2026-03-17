#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ scalar_t;

/* Variables and functions */
int /*<<< orphan*/ poly_modulus;

void poly_set_modulus(scalar_t m) { poly_modulus = m; }