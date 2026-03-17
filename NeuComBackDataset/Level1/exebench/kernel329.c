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
  double x;
  double y;
  int c;
  int d;
  int s;
};
typedef TYPE_1__ Ball;

/* Variables and functions */
int *SIN_TABLE;

void updateBallPosition(Ball *ball) {
  double old_x = ball->x;
  double old_y = ball->y;
  int color = ball->c;
  int dir = ball->d;
  int speed = ball->s;

  double new_x = speed * SIN_TABLE[(dir + 90) % 360] + old_x;
  double new_y = speed * SIN_TABLE[dir] + old_y;

  if (new_x > 524 - 15 / 2 - 1) {
    new_x = 524 - 15 / 2 - 1;
  } else if (new_x < 59 + 15 / 2 + 1) {
    new_x = 59 + 15 / 2 + 1;
  }

  if (new_y < 60 + 15 / 2) {
    new_y = 60 + 15 / 2;
  } else if (new_y >= 420 - 15 / 2) {
    new_y = 420 - 15 / 2 - 1;
  }

  ball->x = new_x;
  ball->y = new_y;
}