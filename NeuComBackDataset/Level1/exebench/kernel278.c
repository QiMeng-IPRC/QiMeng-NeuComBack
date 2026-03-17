#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  scalar_t__ mSize;
};
struct TYPE_4__ {
  TYPE_1__ mVecHead;
};
typedef TYPE_2__ DCCallVM_arm32_thumb;
typedef int /*<<< orphan*/ DCCallVM;

/* Variables and functions */

void dc_callvm_reset_arm32_thumb(DCCallVM *in_self) {
  DCCallVM_arm32_thumb *self = (DCCallVM_arm32_thumb *)in_self;
  (&self->mVecHead)->mSize = 0;
}