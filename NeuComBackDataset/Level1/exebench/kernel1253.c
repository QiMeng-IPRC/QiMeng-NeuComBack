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
  int alloc;
  scalar_t__ num;
};
typedef TYPE_1__ VEC_sudirript_p_base;

/* Variables and functions */

void VEC_sudirript_p_base_embedded_init(VEC_sudirript_p_base *vec_,
                                        int alloc_) {
  vec_->num = 0;
  vec_->alloc = alloc_;
}