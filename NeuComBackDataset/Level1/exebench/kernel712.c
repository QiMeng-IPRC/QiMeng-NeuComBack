#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *buf;

void sn_inrange() {
  int t, i;

  for (i = 0; i < 8; i++) {
    if (buf[i] > 99)
      buf[i] = buf[i] - 99;
    if (buf[i] < 0) {
      buf[i] = (-(buf[i]));
      if (buf[i] > 99)
        buf[i] = buf[i] - 99;
    }
  }
# 108 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/edwardcrichton/BToolkit/refs/heads/master/C/ProcessStudentFile.c"
}