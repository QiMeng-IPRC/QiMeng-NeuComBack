#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int dimnnbr;
};
struct TYPE_5__ {
  int bitsset;
  scalar_t__ dimncur;
};
typedef TYPE_1__ ArchHcubDom;
typedef TYPE_2__ ArchHcub;
typedef int ArchDomNum;

/* Variables and functions */

int archHcubDomTerm(const ArchHcub *const archptr, ArchHcubDom *const domnptr,
                    const ArchDomNum domnnum) {
  if (domnnum < (1 << archptr->dimnnbr)) {
    domnptr->dimncur = 0;
    domnptr->bitsset = domnnum;

    return (0);
  }

  return (1);
}