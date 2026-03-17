#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct gdbarch {
  int ptr_bit;
};

/* Variables and functions */

void set_gdbarch_ptr_bit(struct gdbarch *gdbarch, int ptr_bit) {
  gdbarch->ptr_bit = ptr_bit;
}