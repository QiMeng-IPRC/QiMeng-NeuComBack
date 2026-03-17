#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ col;
  int /*<<< orphan*/ row;
};
struct TYPE_3__ {
  int /*<<< orphan*/ col;
  int /*<<< orphan*/ row;
};

/* Variables and functions */
int /*<<< orphan*/ rstyle;
int /*<<< orphan*/ save_rstyle;
TYPE_2__ save_screen;
TYPE_1__ *screen;

void scr_save_cursor() {
  save_screen.row = screen->row;
  save_screen.col = screen->col;
  save_rstyle = rstyle;
}