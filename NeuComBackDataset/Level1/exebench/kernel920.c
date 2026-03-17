#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ uECC_RNG_Function;

/* Variables and functions */
int /*<<< orphan*/ g_rng;

void uECC_set_rng(uECC_RNG_Function p_rng) { g_rng = p_rng; }