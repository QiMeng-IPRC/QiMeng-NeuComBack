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
  double curtime;
  double basetime;
  int /*<<< orphan*/ seqno;
};
typedef TYPE_1__ SClock;

/* Variables and functions */

void clock_add(SClock *clk, double incr) {
  if (clk) {
    clk->curtime += incr;
    clk->basetime += incr;
    clk->seqno++;
  }
}