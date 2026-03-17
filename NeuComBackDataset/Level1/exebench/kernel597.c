#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int wYSum;
};
struct TYPE_5__ {
  TYPE_1__ DataInf;
};
typedef TYPE_2__ U12_Device;
typedef int /*<<< orphan*/ SANE_Bool;

/* Variables and functions */
int /*<<< orphan*/ SANE_FALSE;
int /*<<< orphan*/ SANE_TRUE;
scalar_t__ wPreviewScanned;

SANE_Bool fnSamplePreview(U12_Device *dev) {
  dev->DataInf.wYSum += wPreviewScanned;
  if (dev->DataInf.wYSum >= 150) {

    dev->DataInf.wYSum -= 150;
    return SANE_TRUE;
  }

  return SANE_FALSE;
}