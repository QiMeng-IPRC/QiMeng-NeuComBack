#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  float x;
  float y;
};
typedef TYPE_1__ gbVec2;

/* Variables and functions */

void gb_vec2_div(gbVec2 *d, gbVec2 v, float s) {
  d->x = v.x / s;
  d->y = v.y / s;
  ;
}