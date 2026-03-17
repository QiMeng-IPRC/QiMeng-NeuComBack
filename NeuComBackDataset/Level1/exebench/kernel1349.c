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
  int snd_wnd;
  int rcv_wnd;
};
typedef TYPE_1__ ikcpcb;

/* Variables and functions */

int ikcp_wndsize(ikcpcb *kcp, int sndwnd, int rcvwnd) {
  if (kcp) {
    if (sndwnd > 0) {
      kcp->snd_wnd = sndwnd;
    }
    if (rcvwnd > 0) {
      kcp->rcv_wnd = rcvwnd;
    }
  }
  return 0;
}