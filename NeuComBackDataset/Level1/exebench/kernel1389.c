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
  unsigned long base_low;
  unsigned long base_high;
  unsigned short selector;
  unsigned char flags;
  scalar_t__ always0;
};

/* Variables and functions */
TYPE_1__ *idt;

void idt_set_gate(int num_exception, unsigned long base,
                  unsigned short selector, unsigned char flags) {
  idt[num_exception].base_low = (base & 0xFFFF);
  idt[num_exception].base_high = (base >> 16) & 0xFF;

  idt[num_exception].selector = selector;
  idt[num_exception].always0 = 0;
  idt[num_exception].flags = flags;
}