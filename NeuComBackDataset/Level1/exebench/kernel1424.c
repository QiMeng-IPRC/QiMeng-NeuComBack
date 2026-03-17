#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct ao_quaternion {
  float r;
  float x;
  float y;
  float z;
};

/* Variables and functions */

float ao_quaternion_normal(const struct ao_quaternion *a) {

  return (((a)->r) * ((a)->r)) + (((a)->x) * ((a)->x)) + (((a)->y) * ((a)->y)) +
         (((a)->z) * ((a)->z));
}