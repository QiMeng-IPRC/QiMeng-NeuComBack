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
  int /*<<< orphan*/ pending;
};
struct tcp_opt {
  TYPE_1__ ack;
};

/* Variables and functions */
int /*<<< orphan*/ TCP_ACK_SCHED;

void tcp_schedule_ack(struct tcp_opt *tp) { tp->ack.pending |= TCP_ACK_SCHED; }