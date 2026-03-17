#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct Vector3f {
  float x;
  float y;
  float z;
};

/* Variables and functions */

float dot(const struct Vector3f *sx, const struct Vector3f *dx) {
  return sx->x * dx->x + sx->y * dx->y + sx->z * sx->z;
}