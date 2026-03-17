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
  int /*<<< orphan*/ h;
  int /*<<< orphan*/ w;
  int /*<<< orphan*/ y;
  int /*<<< orphan*/ x;
};
struct widget {
  TYPE_1__ size;
};
struct box {
  int /*<<< orphan*/ h;
  int /*<<< orphan*/ w;
  int /*<<< orphan*/ y;
  int /*<<< orphan*/ x;
};

/* Variables and functions */

void widget_toggle_place(struct widget *widget, const struct box *box) {

  widget->size.x = box->x;
  widget->size.y = box->y;
  widget->size.w = box->w;
  widget->size.h = box->h;
}