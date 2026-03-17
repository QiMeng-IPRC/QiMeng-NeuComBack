#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int set;
  double llx;
  double urx;
  double lly;
  double ury;
};

/* Variables and functions */
TYPE_1__ bbox;

void cover(double x, double y)

{
# 48 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/n-t-roff/DWB3.3/refs/heads/master/postscript/common/bbox.c"
  if (bbox.set == 0) {
    bbox.llx = bbox.urx = x;
    bbox.lly = bbox.ury = y;
    bbox.set = 1;
  } else {
    if (x < bbox.llx)
      bbox.llx = x;
    if (y < bbox.lly)
      bbox.lly = y;
    if (x > bbox.urx)
      bbox.urx = x;
    if (y > bbox.ury)
      bbox.ury = y;
  }
}