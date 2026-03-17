#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ w;
  scalar_t__ z;
  scalar_t__ y;
  scalar_t__ x;
};
typedef TYPE_1__ VmathQuat;

/* Variables and functions */

void vmathQAdd(VmathQuat *result, const VmathQuat *quat0,
               const VmathQuat *quat1) {
  result->x = (quat0->x + quat1->x);
  result->y = (quat0->y + quat1->y);
  result->z = (quat0->z + quat1->z);
  result->w = (quat0->w + quat1->w);
}