#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  float x;
  float y;
  float z;
};
typedef TYPE_1__ qh_vec3_t;

/* Variables and functions */

float qh__vec3_dot(qh_vec3_t *v1, qh_vec3_t *v2) {
  return v1->x * v2->x + v1->y * v2->y + v1->z * v2->z;
}