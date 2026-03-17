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
  int /*<<< orphan*/ sg_flags;
};

/* Variables and functions */
int /*<<< orphan*/ RAW;
int /*<<< orphan*/ TIOCSETP;
TYPE_1__ Terminal;
int ioctl(int /*<<< orphan*/, int /*<<< orphan*/, TYPE_1__ *);

void noraw() {
  int value;
# 2718 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/TigerBSD/TigerBSD/refs/heads/SCADAbase/FreeBSD/contrib/ee/new_curse.c"
  Terminal.sg_flags &= ~RAW;
  value = ioctl(0, TIOCSETP, &Terminal);
}