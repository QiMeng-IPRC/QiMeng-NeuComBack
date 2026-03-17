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
  float x;
  float y;
  float z;
};
typedef TYPE_1__ Point;

/* Variables and functions */

void mapOutput(float *output, Point *A, int dim) {
  A->x = dim >= 1 ? output[0] : 0;
  A->y = dim >= 2 ? output[1] : 0;
  A->z = dim >= 3 ? output[2] : 0;
}