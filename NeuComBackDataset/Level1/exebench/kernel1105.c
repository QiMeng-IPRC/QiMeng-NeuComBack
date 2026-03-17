#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *comp_tbuffer;
int /*<<< orphan*/ comp_tptr;

void comp_swap(void) { comp_tbuffer[comp_tptr++] = 0x93; }