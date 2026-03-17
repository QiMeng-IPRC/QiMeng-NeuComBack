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
  int base_low;
  int base_high;
  unsigned short sel;
  unsigned char flags;
  scalar_t__ reserved_0;
};

/* Variables and functions */
TYPE_1__ *idt_entries;

int idt_set_gate(unsigned char num, int base, unsigned short int sel,
                 unsigned char flags) {
  idt_entries[num].base_low = base & 0xFFFF;
  idt_entries[num].base_high = (base >> 16) & 0xFFFF;

  idt_entries[num].sel = sel;
  idt_entries[num].reserved_0 = 0;

  idt_entries[num].flags = flags;

  return 1;
}