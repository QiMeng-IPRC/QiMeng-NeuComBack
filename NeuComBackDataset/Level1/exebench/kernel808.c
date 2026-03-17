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
  int dir;
};
typedef TYPE_1__ bot;

/* Variables and functions */

void bot_rotate_to_right(bot *in) {
  switch (in->dir) {
  case 3:
    in->dir = 0;
    break;
  case 1:
    in->dir = 2;
    break;
  case 0:
    in->dir = 1;
    break;
  case 2:
    in->dir = 3;
    break;
  default:
    break;
  }
}