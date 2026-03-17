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
  scalar_t__ currentPlayer;
};
typedef TYPE_1__ Game;

/* Variables and functions */

void end_turn(Game *gamePtr) {
  Game game = *gamePtr;
  game.currentPlayer = 1 - game.currentPlayer;
  *gamePtr = game;
}