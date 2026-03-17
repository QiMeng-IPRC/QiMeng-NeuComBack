#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *gdt_entries;

void load_gdt_entries() {
  int i;
  for (i = 0; i < 9; i++)
    gdt_entries[i] = 0;
  gdt_entries[i++] = 0x40;
  gdt_entries[i++] = 0x9A;
  gdt_entries[i++] = 0x00;

  gdt_entries[i++] = 0x00;
  gdt_entries[i++] = 0x00;
  gdt_entries[i++] = 0x00;
  gdt_entries[i++] = 0x00;

  gdt_entries[i++] = 0x00;
  gdt_entries[i++] = 0x40;
  gdt_entries[i++] = 0x90;
  gdt_entries[i++] = 0x00;

  gdt_entries[i++] = 0x00;
  gdt_entries[i++] = 0x00;
  gdt_entries[i++] = 0x00;
  gdt_entries[i++] = 0x00;
}