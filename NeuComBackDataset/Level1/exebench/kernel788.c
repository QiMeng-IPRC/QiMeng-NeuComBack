#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int fixed;

/* Variables and functions */
int *angles;
int *kvals;

void cordic(fixed phi, fixed *c, fixed *s) {
  int sigma;
  fixed x, y;
  fixed poweroftwo = 0x10000;
  fixed angle = angles[0];
  *c = 0x10000;
  *s = 0;
  if (phi < -0x3243F / 2 || phi > 0x3243F / 2) {
    if (phi < 0) {
      cordic(phi + 0x3243F, c, s);
    } else {
      cordic(phi - 0x3243F, c, s);
    }
    *c *= -1;
    *s *= -1;
    return;
  }

  int i;
  for (i = 0; i < 5; i++) {
    angle = angles[i];
    if (phi < 0) {
      sigma = -1;
    } else {
      sigma = 1;
    }
    x = (*c) - sigma * ((*s) >> i);
    y = (*s) + sigma * ((*c) >> i);
    *c = x;
    *s = y;
    phi = phi - sigma * angle;
    poweroftwo = poweroftwo >> 1;
  }

  *c = (*c >> 8) * (kvals[5 - 1] >> 8);
  *s = (*s >> 8) * (kvals[5 - 1] >> 8);
  return;
}