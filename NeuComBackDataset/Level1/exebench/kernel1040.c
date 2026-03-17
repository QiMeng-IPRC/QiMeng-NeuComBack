#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int dctcoef;

/* Variables and functions */

void dct4x4dc(dctcoef d[16]) {
  dctcoef tmp[16];

  for (int i = 0; i < 4; i++) {
    int s01 = d[i * 4 + 0] + d[i * 4 + 1];
    int d01 = d[i * 4 + 0] - d[i * 4 + 1];
    int s23 = d[i * 4 + 2] + d[i * 4 + 3];
    int d23 = d[i * 4 + 2] - d[i * 4 + 3];

    tmp[0 * 4 + i] = s01 + s23;
    tmp[1 * 4 + i] = s01 - s23;
    tmp[2 * 4 + i] = d01 - d23;
    tmp[3 * 4 + i] = d01 + d23;
  }

  for (int i = 0; i < 4; i++) {
    int s01 = tmp[i * 4 + 0] + tmp[i * 4 + 1];
    int d01 = tmp[i * 4 + 0] - tmp[i * 4 + 1];
    int s23 = tmp[i * 4 + 2] + tmp[i * 4 + 3];
    int d23 = tmp[i * 4 + 2] - tmp[i * 4 + 3];

    d[i * 4 + 0] = (s01 + s23 + 1) >> 1;
    d[i * 4 + 1] = (s01 - s23 + 1) >> 1;
    d[i * 4 + 2] = (d01 - d23 + 1) >> 1;
    d[i * 4 + 3] = (d01 + d23 + 1) >> 1;
  }
}