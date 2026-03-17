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
  double rounded_cwnd;
  int cwnd;
  int ssthresh;
  int sendwin;
  int send_conf_win;
  scalar_t__ recvwin;
};
typedef TYPE_1__ congestion_ctrl_info_t;

/* Variables and functions */

void init_congestion_ctrl_info(congestion_ctrl_info_t *cc_info,
                               int send_conf_win) {
  cc_info->rounded_cwnd = 1.0;
  cc_info->cwnd = 1;
  cc_info->ssthresh = 128;
  cc_info->recvwin = 0;
  cc_info->sendwin = cc_info->cwnd;
  cc_info->send_conf_win = send_conf_win;
}