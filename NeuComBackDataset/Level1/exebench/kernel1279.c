#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  short phaselock;
};
typedef TYPE_1__ t_mask;
typedef scalar_t__ t_floatarg;

/* Variables and functions */

void mask_phaselock(t_mask *x, t_floatarg f) { x->phaselock = (short)f; }