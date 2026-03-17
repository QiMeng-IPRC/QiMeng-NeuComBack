#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct z26_state {
  int AddressBus;
  scalar_t__ ChargeCounter;
  int DataBus;
};

/* Variables and functions */
scalar_t__ *ChargeTrigger0;

void ReadAnalogINPT(struct z26_state *s) {

  if (ChargeTrigger0[s->AddressBus & 0x3] <= s->ChargeCounter)
    s->DataBus = (s->DataBus & 0x3f) | 0x80;
}