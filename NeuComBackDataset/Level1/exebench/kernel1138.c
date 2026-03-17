#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ rmReal;
struct TYPE_3__ {
  int /*<<< orphan*/ x;
};
typedef TYPE_1__ RVec3;

/* Variables and functions */

void RVec3SetX(RVec3 *out, rmReal x) { out->x = x; }