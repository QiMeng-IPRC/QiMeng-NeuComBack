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
  int /*<<< orphan*/ engine_state;
};

/* Variables and functions */
int /*<<< orphan*/ IDLE;
TYPE_1__ *zct;

void cmd_uci_stop(void) { zct->engine_state = IDLE; }