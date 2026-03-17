#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ *board_moves;
scalar_t__ board_moves_count;
scalar_t__ board_result_round;

void board_reset(void) {
  board_moves_count = 0;
  board_moves[0] = 0;
  board_moves[1] = 0;
  board_moves[2] = 0;

  board_result_round = 0;
}