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
  unsigned long tv_std;
};

/* Variables and functions */
TYPE_1__ device_settings;

int FS460_get_tv_standard(unsigned long *p_standard) {
  if (!p_standard)
    return 0x1000;

  *p_standard = device_settings.tv_std;

  return 0;
}