#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int activate;
  int yres_virtual;
  int yres;
  int yoffset;
};

/* Variables and functions */
int /*<<< orphan*/ FBIOGET_VSCREENINFO;
int FB_ACTIVATE_FORCE;
int FB_ACTIVATE_NOW;
int /*<<< orphan*/ fb;
TYPE_1__ fb_var_info;
int /*<<< orphan*/
ioctl(int /*<<< orphan*/, int /*<<< orphan*/, TYPE_1__ *);

void lfb_refresh() {
  fb_var_info.activate |= FB_ACTIVATE_NOW | FB_ACTIVATE_FORCE;
  fb_var_info.yres_virtual = fb_var_info.yres * 2;
  fb_var_info.yoffset = fb_var_info.yres;
  ioctl(fb, FBIOGET_VSCREENINFO, &fb_var_info);
}