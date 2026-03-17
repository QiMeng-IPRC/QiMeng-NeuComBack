#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_9__ TYPE_5__;
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_8__ {
  int dnsp;
  int hpf;
  int dnts;
  int di;
  scalar_t__ disp;
  scalar_t__ gamut;
  scalar_t__ his;
};
typedef TYPE_3__ viqe_modes_t;
struct TYPE_7__ {
  int nTOP_INT;
};
struct TYPE_6__ {
  int nTOP_CTRL;
};
struct TYPE_9__ {
  TYPE_2__ uTOP_INT;
  TYPE_1__ uTOP_CTRL;
};

/* Variables and functions */
TYPE_5__ *HwVIPET;
int RET_VIQE_EN_DI_DNSP;
int RET_VIQE_EN_ERRREG;

int viqe_set_modes(viqe_modes_t *modes) {
  int ret;

  HwVIPET->uTOP_CTRL.nTOP_CTRL =
      ((modes->dnsp | modes->hpf)
           ? (HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00000040)
           : (HwVIPET->uTOP_CTRL.nTOP_CTRL & (~0x00000040)));
  HwVIPET->uTOP_CTRL.nTOP_CTRL =
      (modes->dnts ? (HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00000020)
                   : (HwVIPET->uTOP_CTRL.nTOP_CTRL & (~0x00000020)));
  HwVIPET->uTOP_CTRL.nTOP_CTRL =
      (modes->di ? (HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00000010)
                 : (HwVIPET->uTOP_CTRL.nTOP_CTRL & (~0x00000010)));
  HwVIPET->uTOP_CTRL.nTOP_CTRL =
      (modes->hpf ? (HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00000400)
                  : (HwVIPET->uTOP_CTRL.nTOP_CTRL & (~0x00000400)));
  HwVIPET->uTOP_CTRL.nTOP_CTRL =
      (modes->disp ? (HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00001000)
                   : (HwVIPET->uTOP_CTRL.nTOP_CTRL & (~0x00001000)));
  HwVIPET->uTOP_CTRL.nTOP_CTRL =
      (modes->his ? (HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00040000)
                  : (HwVIPET->uTOP_CTRL.nTOP_CTRL & (~0x00040000)));
  HwVIPET->uTOP_CTRL.nTOP_CTRL =
      (modes->gamut ? (HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00020000)
                    : (HwVIPET->uTOP_CTRL.nTOP_CTRL & (~0x00020000)));
# 827 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Stevenwork/Innov_code/refs/heads/master/v0.9/camera/tcc/viqe_lib.c"
  if (modes->di & !modes->disp) {
    if (modes->dnsp | modes->hpf)

      return RET_VIQE_EN_DI_DNSP;
  }

  if (modes->dnts & modes->dnsp) {

    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~(0x00000100 | 0x00000200);
    HwVIPET->uTOP_CTRL.nTOP_CTRL |= 0x00000200;

  } else if (modes->dnts & modes->hpf) {

    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~(0x00000100 | 0x00000200);
    HwVIPET->uTOP_CTRL.nTOP_CTRL |= 0x00000200;

  } else if (modes->dnts) {

    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~(0x00000100 | 0x00000200);

  } else if (modes->dnsp | modes->hpf) {

    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~(0x00000100 | 0x00000200);
    HwVIPET->uTOP_CTRL.nTOP_CTRL |= 0x00000100;
  }

  if (modes->di & !modes->disp & modes->hpf) {

    HwVIPET->uTOP_CTRL.nTOP_CTRL |= 0x00002000;

  } else {

    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~0x00002000;
  }

  if (modes->di & !modes->disp | modes->dnts) {

    HwVIPET->uTOP_CTRL.nTOP_CTRL |= 0x00000004;

  } else {

    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~0x00000004;
  }

  if (modes->dnts) {

    HwVIPET->uTOP_CTRL.nTOP_CTRL |= 0x00000008;
    HwVIPET->uTOP_CTRL.nTOP_CTRL |= 0x00000080;

  } else {

    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~0x00000008;
    HwVIPET->uTOP_CTRL.nTOP_CTRL &= ~0x00000080;
  }

  ret = 1;
  HwVIPET->uTOP_CTRL.nTOP_CTRL = HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00010000;
  HwVIPET->uTOP_CTRL.nTOP_CTRL = HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00000002;
  HwVIPET->uTOP_CTRL.nTOP_CTRL = HwVIPET->uTOP_CTRL.nTOP_CTRL | 0x00000001;
# 936 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Stevenwork/Innov_code/refs/heads/master/v0.9/camera/tcc/viqe_lib.c"
  ret = ((HwVIPET->uTOP_INT.nTOP_INT &
          (0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)) == 0)
            ? 1
            : RET_VIQE_EN_ERRREG;

  return ret;
}