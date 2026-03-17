#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int /*<<< orphan*/ i;
};
typedef TYPE_1__ vbench_union32_t;
typedef int /*<<< orphan*/ pixel;

/* Variables and functions */

void vbench_predict_4x4_v_c(pixel *src) {
  (((vbench_union32_t *)(&src[(0) + (0) * 32]))->i) =
      (((vbench_union32_t *)(&src[(0) + (1) * 32]))->i) =
          (((vbench_union32_t *)(&src[(0) + (2) * 32]))->i) =
              (((vbench_union32_t *)(&src[(0) + (3) * 32]))->i) =
                  (((vbench_union32_t *)(&src[(0) + (-1) * 32]))->i);
  ;
}