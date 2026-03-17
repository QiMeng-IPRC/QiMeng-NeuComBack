#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int i;
int j;

void ShiftRows(int a[4][4]) {
  int tmp[4];
  for (i = 1; i < 4; i++) {
    for (j = 0; j < 4; j++)
      tmp[j] = a[i][(j + i) % 4];
    for (j = 0; j < 4; j++)
      a[i][j] = tmp[j];
  }
}