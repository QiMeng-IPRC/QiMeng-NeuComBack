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
  int i;
};
typedef TYPE_1__ vbench_union32_t;
typedef int /*<<< orphan*/ pixel;

/* Variables and functions */

void vbench_predict_8x8c_dc_128_c(pixel *src) {
  for (int y = 0; y < 8; y++) {
    (((vbench_union32_t *)(src + 0))->i) = ((1 << (8 - 1)) * 0x01010101U);
    (((vbench_union32_t *)(src + 4))->i) = ((1 << (8 - 1)) * 0x01010101U);
    src += 32;
  }
}