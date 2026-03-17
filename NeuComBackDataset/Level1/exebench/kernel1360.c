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
  unsigned char red;
  unsigned char green;
  unsigned char blue;
};
typedef TYPE_1__ bmp_pixel;

/* Variables and functions */

void bmp_pixel_init(bmp_pixel *pxl, const unsigned char red,
                    const unsigned char green, const unsigned char blue) {
  pxl->red = red;
  pxl->green = green;
  pxl->blue = blue;
}