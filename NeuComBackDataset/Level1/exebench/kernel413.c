#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int u32;
struct TYPE_3__ {
  int DACPixelFormat;
  int DACStreamCtrl;
};
typedef TYPE_1__ STG4000REG;

/* Variables and functions */

void EnableOverlayPlane(volatile STG4000REG *pSTGReg) {
  u32 tmp;

  tmp = (pSTGReg->DACPixelFormat);
  tmp |= (1 << (7));
  (pSTGReg->DACPixelFormat = tmp);

  tmp = (pSTGReg->DACStreamCtrl);
  tmp |= (1 << (1));
  (pSTGReg->DACStreamCtrl = tmp);
}