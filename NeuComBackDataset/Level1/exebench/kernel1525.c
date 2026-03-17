#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct of_geom {
  int dummy;
};
typedef int /*<<< orphan*/ FTYPE;

/* Variables and functions */
int PRIMECOORDS;
int WHICHVEL;

int init_atmosphere(int *whichvel, int *whichcoord, int i, int j, int k,
                    FTYPE *pr) {
  int pl, pliter;
  struct of_geom realgeom, geom;
  FTYPE pratm[8];
# 319 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/pseudotensor/harm_harmgit/refs/heads/master/initboundcode/init.ff.c"
  *whichvel = WHICHVEL;
  *whichcoord = PRIMECOORDS;
  return (0);
}