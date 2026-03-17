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
  int /*<<< orphan*/ pos;
  int /*<<< orphan*/ top;
};

/* Variables and functions */
TYPE_1__ *menu;
int /*<<< orphan*/ saved_pos;
int /*<<< orphan*/ saved_top;

void load_menu_pos(void) {
  menu->top = saved_top;
  menu->pos = saved_pos;
}