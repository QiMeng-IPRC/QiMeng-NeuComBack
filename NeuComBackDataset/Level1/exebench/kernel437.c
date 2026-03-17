#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
char isRed_other;
scalar_t__ *score_2p;

int updateCount_other(float X[], float Y[], int coinCount[]) {
  int black_count = 0, white_count = 0, red_count = 0, toReturn = 0;
  if (X[1] == 2.0f)
    black_count = black_count + 1;
  if (X[2] == 2.0f)
    black_count = black_count + 1;
  if (X[3] == 2.0f)
    white_count = white_count + 1;
  if (X[4] == 2.0f)
    white_count = white_count + 1;
  if (X[5] == 2.0f) {
    red_count = red_count + 1;
  }
  if (((white_count - coinCount[1]) > 0) && X[0] != 2.0f) {
    toReturn = 1;
    score_2p[0] = score_2p[0] + 2;
  }
  if (((red_count - coinCount[2]) > 0) && X[0] != 2.0f) {
    toReturn = 1;
    isRed_other = 'y';
    score_2p[0] = score_2p[0] + 3;
  }
  coinCount[0] = black_count;
  coinCount[1] = white_count;
  coinCount[2] = red_count;
  return toReturn;
}