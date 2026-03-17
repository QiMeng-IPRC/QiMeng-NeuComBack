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
  float xy;
  float yx;
  float xz;
  float zx;
  float xw;
  float wx;
  float yz;
  float zy;
  float yw;
  float wy;
  float zw;
  float wz;
};
typedef TYPE_1__ egMat4;

/* Variables and functions */

void egMat4Transpose(egMat4 *a) {
  float sf;

  sf = a->xy;
  a->xy = a->yx;
  a->yx = sf;

  sf = a->xz;
  a->xz = a->zx;
  a->zx = sf;

  sf = a->xw;
  a->xw = a->wx;
  a->wx = sf;

  sf = a->yz;
  a->yz = a->zy;
  a->zy = sf;

  sf = a->yw;
  a->yw = a->wy;
  a->wy = sf;

  sf = a->zw;
  a->zw = a->wz;
  a->wz = sf;
}