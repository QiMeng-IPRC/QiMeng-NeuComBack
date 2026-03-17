#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct can_bittiming_const {
  int tseg2_min;
  int tseg2_max;
  int tseg1_max;
};

/* Variables and functions */

int can_update_spt(const struct can_bittiming_const *btc, int sampl_pt,
                   int tseg, int *tseg1, int *tseg2) {
  *tseg2 = tseg + 1 - (sampl_pt * (tseg + 1)) / 1000;
  if (*tseg2 < btc->tseg2_min)
    *tseg2 = btc->tseg2_min;
  if (*tseg2 > btc->tseg2_max)
    *tseg2 = btc->tseg2_max;
  *tseg1 = tseg - *tseg2;
  if (*tseg1 > btc->tseg1_max) {
    *tseg1 = btc->tseg1_max;
    *tseg2 = tseg - *tseg1;
  }
  return 1000 * (tseg + 1 - *tseg2) / (tseg + 1);
}