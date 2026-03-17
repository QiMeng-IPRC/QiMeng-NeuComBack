#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef double starreal;

/* Variables and functions */

void righttensor(starreal x, starreal y, starreal z, starreal E[3][3]) {
  starreal s;

  s = (x + 1.0);
  if (s < 1.0)
    s = 1.0;

  E[0][0] = s;
  E[0][1] = 0.0;
  E[0][2] = 0.0;
  E[1][0] = 0.0;
  E[1][1] = s;
  E[1][2] = 0.0;
  E[2][0] = 0.0;
  E[2][1] = 0.0;
  E[2][2] = s;
}