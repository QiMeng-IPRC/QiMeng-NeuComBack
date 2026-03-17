#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int flags;
};
typedef TYPE_1__ rtransfer_t;

/* Variables and functions */
int /*<<< orphan*/ curtransfersize;
TYPE_1__ *gfree;

void rtransfer_put(rtransfer_t *rtt) {
  curtransfersize--;
  rtt->flags &= ~(1 << 0);
  if (rtt < gfree)
    gfree = rtt;
}