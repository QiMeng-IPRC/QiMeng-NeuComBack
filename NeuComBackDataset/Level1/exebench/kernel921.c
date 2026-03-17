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
  scalar_t__ pmove_frame;
  int /*<<< orphan*/ pmove_flags;
  int /*<<< orphan*/ netpmove_flags;
  int /*<<< orphan*/ velocity;
  int /*<<< orphan*/ netvelocity;
  int /*<<< orphan*/ angles;
  int /*<<< orphan*/ netangles;
  int /*<<< orphan*/ origin;
  int /*<<< orphan*/ netorigin;
};

/* Variables and functions */
TYPE_1__ self;
scalar_t__ servercommandframe;

void Player_PostUpdate(void) {
  self.netorigin = self.origin;
  self.netangles = self.angles;
  self.netvelocity = self.velocity;
  self.netpmove_flags = self.pmove_flags;
  self.pmove_frame = servercommandframe + 1;
}