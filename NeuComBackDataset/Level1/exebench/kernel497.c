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
typedef TYPE_1__ vectorf;

/* Variables and functions */

float vectorf_scalar(vectorf *a, vectorf *b) {
  return (a->x * b->x) + (a->y * b->y) + (a->z * b->z);
}