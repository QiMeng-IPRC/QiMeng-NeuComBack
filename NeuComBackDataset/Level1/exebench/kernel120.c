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
  int w;
};
typedef TYPE_1__ WDL_DenormalFloatAccess;

/* Variables and functions */

void denormal_fix_float(float *a) {
  if (!((((const WDL_DenormalFloatAccess *)(a))->w) & 0x7f800000))
    *a = 0.0f;
}