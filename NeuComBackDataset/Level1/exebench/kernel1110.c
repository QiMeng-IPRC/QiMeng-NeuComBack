#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int UINT;
typedef int const U32;

/* Variables and functions */
int g_nIsdbtPrevAntennaLevel_1seg;

UINT rtvMTV23x_GetAntennaLevel_1seg(U32 dwCNR) {
  UINT nCurLevel = 7 - 1;
  UINT nPrevLevel = g_nIsdbtPrevAntennaLevel_1seg;
  static const UINT aAntLvlTbl[7 - 1] = {15 * 1000, 12 * 1000, 11 * 1000,
                                         9 * 1000,  7 * 1000,  4 * 1000};
# 1374 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Dm47021/android_kernel_afyonlte/refs/heads/TW-5.1.1/drivers/media/mtv/mtv23x/mtv23x_demod.c"
  do {
    if (dwCNR >= aAntLvlTbl[6 - nCurLevel])
      break;
  } while (--nCurLevel != 0);

  if (nCurLevel != nPrevLevel) {
    if (nCurLevel < nPrevLevel)
      nPrevLevel--;
    else
      nPrevLevel++;

    g_nIsdbtPrevAntennaLevel_1seg = nPrevLevel;
  }

  return nPrevLevel;
}