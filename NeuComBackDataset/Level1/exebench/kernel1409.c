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
  float w;
};
typedef TYPE_1__ VmathVector4;

/* Variables and functions */

float vmathV4LengthSqr(const VmathVector4 *vec) {
  float result;
  result = (vec->x * vec->x);
  result = (result + (vec->y * vec->y));
  result = (result + (vec->z * vec->z));
  result = (result + (vec->w * vec->w));
  return result;
}