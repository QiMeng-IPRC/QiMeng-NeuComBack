#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float *gfks_ambient_color;

void gfks_set_ambient_light(float r, float g, float b) {
  gfks_ambient_color[0] = r;
  gfks_ambient_color[1] = g;
  gfks_ambient_color[2] = b;
}