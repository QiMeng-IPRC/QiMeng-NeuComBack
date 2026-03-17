#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int control_register;
  int interrupt_received;
  int irq;
};
struct TYPE_4__ {
  TYPE_1__ b;
};

/* Variables and functions */
TYPE_2__ PIA0;

void do_fs_fall(void) {
  do {
    if (!(PIA0.b.control_register & 0x02)) {
      PIA0.b.interrupt_received = 0x80;
      if ((PIA0.b.control_register & 0x01)) {
        PIA0.b.irq = 1;
      } else {
        PIA0.b.irq = 0;
      }
    }
  } while (0);
}