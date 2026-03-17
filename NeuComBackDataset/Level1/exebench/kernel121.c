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
typedef TYPE_1__ RQuat;

/* Variables and functions */

void RQuatAdd(RQuat *out, const RQuat *q1, const RQuat *q2) {
  out->x = q1->x + q2->x;
  out->y = q1->y + q2->y;
  out->z = q1->z + q2->z;
  out->w = q1->w + q2->w;
}