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
  int rpos;
  int gpos;
  int bpos;
};

/* Variables and functions */
TYPE_1__ *mode_info;

int get_color_shift(int *rshift, int *gshift, int *bshift) {
  if (!mode_info) {
    return -1;
  }
  *rshift = mode_info->rpos;
  *gshift = mode_info->gpos;
  *bshift = mode_info->bpos;
  return 0;
}