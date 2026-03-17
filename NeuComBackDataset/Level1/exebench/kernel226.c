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
  int /*<<< orphan*/ w;
  int /*<<< orphan*/ z;
  int /*<<< orphan*/ y;
  int /*<<< orphan*/ x;
};
typedef TYPE_1__ VmathVector4;

/* Variables and functions */

void vmathV4Copy(VmathVector4 *result, const VmathVector4 *vec) {
  result->x = vec->x;
  result->y = vec->y;
  result->z = vec->z;
  result->w = vec->w;
}