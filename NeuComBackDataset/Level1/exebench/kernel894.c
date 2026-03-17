#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  scalar_t__ eol;
  scalar_t__ n;
};

/* Variables and functions */
TYPE_1__ *lp;

void ll_reset(int ld) { lp[ld].n = lp[ld].eol = 0; }