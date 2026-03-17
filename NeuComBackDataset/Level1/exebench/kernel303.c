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
  int red;
  int grn;
  int blu;
};
typedef TYPE_1__ rgb_t;

/* Variables and functions */

void color_ledAdjust(rgb_t *rgb) {
  rgb->red = rgb->red * rgb->red;
  rgb->grn = rgb->grn * rgb->grn;
  rgb->blu = rgb->blu * rgb->blu;

  return;
}