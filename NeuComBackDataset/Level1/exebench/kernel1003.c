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
  scalar_t__ sendwin;
  scalar_t__ send_conf_win;
  scalar_t__ recvwin;
  scalar_t__ cwnd;
};
typedef TYPE_1__ congestion_ctrl_info_t;

/* Variables and functions */

void recalc_send_win_size(congestion_ctrl_info_t *cc_info) {

  cc_info->sendwin = (((cc_info->send_conf_win) < (cc_info->recvwin))
                          ? (cc_info->send_conf_win)
                          : (cc_info->recvwin));

  cc_info->sendwin =
      (((cc_info->sendwin) < (cc_info->cwnd)) ? (cc_info->sendwin)
                                              : (cc_info->cwnd));
}