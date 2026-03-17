#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ t_floatarg;
struct TYPE_3__ {
  short mute;
};
typedef TYPE_1__ t_adsr;

/* Variables and functions */

void adsr_mute(t_adsr *x, t_floatarg f) { x->mute = (short)f; }