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
  scalar_t__ estimateRtt;
  scalar_t__ timeout;
  int devRtt;
};
typedef TYPE_1__ Resf;

/* Variables and functions */

int calculateNewTimeout(Resf *resf) {
  if (resf->estimateRtt != 0) {
    resf->timeout = resf->estimateRtt + 4 * resf->devRtt;
  }
  return 0;
}