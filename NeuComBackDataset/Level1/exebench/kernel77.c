#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef size_t word;
typedef int dword;
typedef int byte;
struct TYPE_2__ {
  int limit_low;
  int flags_and_limit_high;
  int base_low;
  int base_middle;
  int base_high;
  int access;
};

/* Variables and functions */
TYPE_1__ *gdt;
size_t gdt_entries;

void gdt_set_entry(word index, dword base, dword limit, byte access,
                   byte flags) {
  gdt[index].limit_low = limit & 0xFFFF;
  gdt[index].flags_and_limit_high = (flags << 4) | ((limit >> 16) & 0x0F);
  gdt[index].base_low = base & 0xFFFF;
  gdt[index].base_middle = (base >> 16) & 0xFF;
  gdt[index].base_high = (base >> 24) & 0xFF;
  gdt[index].access = access;

  if (++index > gdt_entries) {
    gdt_entries = index;
  }
}