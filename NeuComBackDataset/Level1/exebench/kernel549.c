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
  int x1;
  int y1;
  int x2;
  int y2;
};
typedef TYPE_1__ CSSRect;

/* Variables and functions */

void css_set_rect(CSSRect *a, int x1, int y1, int x2, int y2) {
  a->x1 = x1;
  a->y1 = y1;
  a->x2 = x2;
  a->y2 = y2;
}