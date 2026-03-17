#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct int_char_combo_t {
  int int1;
  char ch1;
};

/* Variables and functions */

void init_int_char_combo(struct int_char_combo_t *combo, int init_val1,
                         char init_val2) {

  combo->int1 = init_val1;
  combo->ch1 = init_val2;
}