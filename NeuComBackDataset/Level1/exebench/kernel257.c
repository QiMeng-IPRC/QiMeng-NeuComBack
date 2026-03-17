#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int cursor_column;
scalar_t__ cursor_row;

void back_cursor(void) {
  if (cursor_column == 0) {
    if (cursor_row == 0)
      return;

    cursor_column = 80 - 1;
    cursor_row -= 1;
  } else {
    cursor_column -= 1;
  }
}