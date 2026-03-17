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
typedef TYPE_1__ DmathVector3;

/* Variables and functions */

void dmathV3RecipPerElem(DmathVector3 *result, const DmathVector3 *vec) {
  result->x = (1.0f / vec->x);
  result->y = (1.0f / vec->y);
  result->z = (1.0f / vec->z);
}