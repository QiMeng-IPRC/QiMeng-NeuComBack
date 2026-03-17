#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_3__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ max_y;
};
struct TYPE_4__ {
  scalar_t__ y;
  scalar_t__ h;
  scalar_t__ vel;
};
typedef TYPE_1__ Paddle;

/* Variables and functions */
TYPE_3__ Screen;

void movePaddleDown(Paddle *paddle) {
  if (paddle->y + paddle->h + paddle->vel > Screen.max_y)
    ;
  else {
    paddle->y += paddle->vel;
  }
}