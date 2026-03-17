#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
size_t DISSDUMPTYPE;
scalar_t__ EVOLVEWITHVPOT;
size_t FAILFLOORDUDUMPTYPE;
scalar_t__ TRACKVPOT;
size_t VPOTDUMPTYPE;
int *dnumcolumns;

void set_rdump_content_dnumcolumns_dnumversion(int *numcolumns,
                                               int *numversion) {
# 220 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/pseudotensor/harm_harmgit/refs/heads/master/restart.c"
  *numcolumns =
      8 * 2 + dnumcolumns[DISSDUMPTYPE] + dnumcolumns[FAILFLOORDUDUMPTYPE];

  if (EVOLVEWITHVPOT || TRACKVPOT) {

    *numcolumns += dnumcolumns[VPOTDUMPTYPE];
  }

  *numversion = 1;
}