#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int OPM_opt;
int OPV_ansi;
int OPV_assert;
int OPV_inxchk;
int OPV_mainprog;
scalar_t__ OPV_nofExitLabels;
scalar_t__ OPV_recno;
scalar_t__ OPV_stamp;

void OPV_Init(void) {
  OPV_stamp = 0;
  OPV_recno = 0;
  OPV_nofExitLabels = 0;
  OPV_assert = (((OPM_opt) >> (7)) & 1);
  OPV_inxchk = (((OPM_opt) >> (0)) & 1);
  OPV_mainprog = (((OPM_opt) >> (10)) & 1);
  OPV_ansi = (((OPM_opt) >> (6)) & 1);
}