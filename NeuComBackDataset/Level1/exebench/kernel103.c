#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ gx_device;
typedef int gx_color_value;
typedef int gx_color_index;

/* Variables and functions */

int display_map_color_rgb_bgr24(gx_device *dev, gx_color_index color,
                                gx_color_value prgb[3]) {
  prgb[0] = (((color & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) +
             ((color & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
  prgb[1] = ((((color >> 8) & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) +
             (((color >> 8) & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
  prgb[2] = ((((color >> 16) & 0xff) << ((sizeof(gx_color_value) * 8) - 8)) +
             (((color >> 16) & 0xff) >> (16 - (sizeof(gx_color_value) * 8))));
  return 0;
}