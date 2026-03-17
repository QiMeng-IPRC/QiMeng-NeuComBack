#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ raft_server_t;
struct TYPE_2__ {
  int current_idx;
};
typedef TYPE_1__ raft_server_private_t;

/* Variables and functions */

void raft_set_current_idx(raft_server_t *me_, int idx) {
  raft_server_private_t *me = (raft_server_private_t *)me_;
  me->current_idx = idx;
}