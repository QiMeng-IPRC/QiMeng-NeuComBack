#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  double update_rate;
  int ctime_last;
};
struct TYPE_5__ {
  TYPE_1__ state_dut1;
};
typedef TYPE_2__ qp_memory_t;

/* Variables and functions */

void qp_set_rate_dut1(qp_memory_t *mem, double rate) {
  if (rate != mem->state_dut1.update_rate) {
    mem->state_dut1.update_rate = rate;
    mem->state_dut1.ctime_last = -1;
  }
}