#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct v4l2_rect {
  scalar_t__ width;
  scalar_t__ height;
};

/* Variables and functions */

void v4l2_rect_set_max_size(struct v4l2_rect *r,
                            const struct v4l2_rect *max_size) {
  if (r->width > max_size->width)
    r->width = max_size->width;
  if (r->height > max_size->height)
    r->height = max_size->height;
}