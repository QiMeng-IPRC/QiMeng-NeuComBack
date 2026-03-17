#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct imv_viewport {
  int x;
  int y;
};

/* Variables and functions */

void imv_viewport_get_offset(struct imv_viewport *view, int *x, int *y) {
  if (x) {
    *x = view->x;
  }
  if (y) {
    *y = view->y;
  }
}