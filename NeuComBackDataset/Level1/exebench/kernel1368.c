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
  double x;
  double y;
  double z;
  double w;
};
typedef TYPE_1__ double4;

/* Variables and functions */

void d4_read_array(double4 *v, const double *arr) {
  v->x = arr[0];
  v->y = arr[1];
  v->z = arr[2];
  v->w = arr[3];
}