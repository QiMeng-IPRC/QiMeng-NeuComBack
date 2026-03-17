#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int tab_size;
};
typedef TYPE_1__ EditState;

/* Variables and functions */

void do_set_tab_width(EditState *s, int tab_width) {
  if (tab_width > 1)
    s->tab_size = tab_width;
}