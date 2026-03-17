#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ sint8;
typedef int /*<<< orphan*/ atomic_int8_t;

/* Variables and functions */

void atomic_int8_store(atomic_int8_t *a, sint8 b) { *a = b; }