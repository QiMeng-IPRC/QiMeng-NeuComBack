#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *blu;
int *grn;
int *img;
int iterations;
int nu;
int *red;

void color_pixel_continous(int pixel, int i) {
  if (i < iterations) {
    i = i % 3;
    img[pixel] = blu[i] + nu * (blu[(i + 1) % 3] - blu[i]);
    img[pixel + 1] = grn[i] + nu * (grn[(i + 1) % 3] - grn[i]);
    img[pixel + 2] = red[i] + nu * (red[(i + 1) % 3] - red[i]);
  } else {
    img[pixel] = 0x00;
    img[pixel + 1] = 0x00;
    img[pixel + 2] = 0x00;
  }
}