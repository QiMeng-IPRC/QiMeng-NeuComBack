#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef unsigned char surface_type;

/* Variables and functions */
unsigned char surface_blocks_air;

unsigned char air_permeable(surface_type s) { return ~s & surface_blocks_air; }