#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int /*<<< orphan*/ *abGpInvert;
  int /*<<< orphan*/ *abGpHost;
  int /*<<< orphan*/ *abGpMode;
  int /*<<< orphan*/ *abGpDdr;
};
struct TYPE_4__ {
  TYPE_1__ sGpMode;
};

/* Variables and functions */
TYPE_2__ gsGlobalInfo;

void InitGpMode(void) {
  unsigned char bGpioIdx;

  for (bGpioIdx = 0; bGpioIdx < (2); bGpioIdx++) {
    gsGlobalInfo.sGpMode.abGpDdr[bGpioIdx] = (0);
    gsGlobalInfo.sGpMode.abGpMode[bGpioIdx] = (0);
    gsGlobalInfo.sGpMode.abGpHost[bGpioIdx] = (0);
    gsGlobalInfo.sGpMode.abGpInvert[bGpioIdx] = (0);
  }
}