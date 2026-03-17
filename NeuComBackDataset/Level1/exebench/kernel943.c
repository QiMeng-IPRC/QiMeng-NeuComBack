#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int x;
  int y;
};
struct TYPE_6__ {
  int num_lives;
  int num_bombs;
  int /*<<< orphan*/ avatar_velocity;
  TYPE_1__ avatar_position;
};
typedef TYPE_2__ az_play_state_t;

/* Variables and functions */
int /*<<< orphan*/ AZ_VZERO;
int /*<<< orphan*/
memset(TYPE_2__ *, int /*<<< orphan*/, int);

void az_init_play_state(az_play_state_t *state) {
  memset(state, 0, sizeof(*state));
  state->avatar_position.x = 800 / 2;
  state->avatar_position.y = 500 / 2;
  state->avatar_velocity = AZ_VZERO;
  state->num_lives = 3;
  state->num_bombs = 3;
}