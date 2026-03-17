#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;
typedef int u32;
struct gdtdesc {
  int lim0_15;
  int base0_15;
  int base16_23;
  int acces;
  int lim16_19;
  int other;
  int base24_31;
};

/* Variables and functions */

void init_gdt_desc(u32 base, u32 limite, u8 acces, u8 other,
                   struct gdtdesc *desc) {
  desc->lim0_15 = (limite & 0xffff);
  desc->base0_15 = (base & 0xffff);
  desc->base16_23 = (base & 0xff0000) >> 16;
  desc->acces = acces;
  desc->lim16_19 = (limite & 0xf0000) >> 16;
  desc->other = (other & 0xf);
  desc->base24_31 = (base & 0xff000000) >> 24;
  return;
}