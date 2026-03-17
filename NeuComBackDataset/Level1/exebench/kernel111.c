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
  int *registers;
  int dbyte1;
  int dbyte2;
};

/* Variables and functions */
TYPE_1__ cpu0;

void instruc_13() {
  cpu0.registers[cpu0.dbyte1 & 0x0f] =
      cpu0.registers[cpu0.dbyte1 & 0x0f] & cpu0.registers[cpu0.dbyte2 & 0xf0];
}