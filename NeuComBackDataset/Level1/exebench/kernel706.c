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
  int *memory;
  size_t sp;
  int ip;
  int dbyte1;
  int dbyte2;
};

/* Variables and functions */
TYPE_1__ cpu0;

void instruc_5() {
  cpu0.memory[cpu0.sp] = cpu0.ip & 0xfff;
  cpu0.sp++;
  cpu0.ip = (cpu0.dbyte1 & 0x0f) << 8 | (cpu0.dbyte2 & 0xff);
}