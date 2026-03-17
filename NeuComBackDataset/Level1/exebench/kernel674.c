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
  int x;
  int y;
  int z;
};
typedef TYPE_1__ V3D;
typedef int R8;
typedef int IX;

/* Variables and functions */

void CTShift(const V3D *s, R8 t[4][4]) {
  IX j;

  for (j = 0; j < 4; j++) {
    t[0][j] -= s->x * t[3][j];
  }
  for (j = 0; j < 4; j++) {
    t[1][j] -= s->y * t[3][j];
  }
  for (j = 0; j < 4; j++) {
    t[2][j] -= s->z * t[3][j];
  }
}