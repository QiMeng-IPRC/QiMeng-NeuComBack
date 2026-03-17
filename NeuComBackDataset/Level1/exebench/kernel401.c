#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct z26_state {
  int DataBus;
};

/* Variables and functions */

void ReadTIAdummy(struct z26_state *s) { s->DataBus &= 0x3f; }