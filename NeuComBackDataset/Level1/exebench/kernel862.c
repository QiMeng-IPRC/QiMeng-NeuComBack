#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int m00;
  int m01;
  int m02;
  int m10;
  int m11;
  int m12;
  int m20;
  int m21;
  int m22;
};
struct TYPE_5__ {
  int x;
  int y;
  int z;
};
typedef TYPE_1__ LIVec3;
typedef TYPE_2__ LIMat4;

/* Variables and functions */

void LIScaleMat4(LIMat4 *m, LIVec3 v) {
  m->m00 = m->m00 * v.x;
  m->m01 = m->m01 * v.x;
  m->m02 = m->m02 * v.x;

  m->m10 = m->m10 * v.y;
  m->m11 = m->m11 * v.y;
  m->m12 = m->m12 * v.y;

  m->m20 = m->m20 * v.z;
  m->m21 = m->m21 * v.z;
  m->m22 = m->m22 * v.z;
}