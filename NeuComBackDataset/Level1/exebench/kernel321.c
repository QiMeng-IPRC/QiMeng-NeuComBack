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
  int cursor_line_width;
};
typedef TYPE_1__ nio_console;

/* Variables and functions */

void nio_cursor_width(nio_console *c, int cursor_width) {
  c->cursor_line_width = cursor_width;
}