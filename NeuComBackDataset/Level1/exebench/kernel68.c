#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
char *gen_label_break;
char *gen_label_break_store;
char *gen_label_continue;
char *gen_label_continue_store;

void gen_jump_save(char *lbreak, char *lcontinue) {
  gen_label_break_store = gen_label_break;
  gen_label_continue_store = gen_label_continue;
  gen_label_break = lbreak;
  gen_label_continue = lcontinue;
}