#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  scalar_t__ z;
  scalar_t__ y;
  scalar_t__ x;
};
typedef TYPE_1__ VmathVector3;
struct TYPE_7__ {
  scalar_t__ z;
  scalar_t__ y;
  scalar_t__ x;
};
typedef TYPE_2__ VmathPoint3;

/* Variables and functions */

void vmathP3SubV3(VmathPoint3 *result, const VmathPoint3 *pnt,
                  const VmathVector3 *vec1) {
  result->x = (pnt->x - vec1->x);
  result->y = (pnt->y - vec1->y);
  result->z = (pnt->z - vec1->z);
}