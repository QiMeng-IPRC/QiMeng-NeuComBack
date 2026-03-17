#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ ui_mode_t;

/* Variables and functions */
int /*<<< orphan*/ disp_mode;

int ui_mode(ui_mode_t umode) {
  disp_mode = umode;
  return 0;
}