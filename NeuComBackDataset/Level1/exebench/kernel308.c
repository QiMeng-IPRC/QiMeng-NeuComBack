#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int lens_width;
int video_height;
int video_width;
int x;
int y;

void clipmag() {
  if (y < 0 - (lens_width / 2) + 1)
    y = 0 - (lens_width / 2) + 1;
  if (y >= video_height - lens_width / 2 - 1)
    y = video_height - lens_width / 2 - 1;

  if (x < 0 - (lens_width / 2) + 1)
    x = 0 - lens_width / 2 + 1;
  if (x >= video_width - lens_width / 2 - 1)
    x = video_width - lens_width / 2 - 1;
}