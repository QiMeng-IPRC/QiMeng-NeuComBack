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
  int /*<<< orphan*/ resample_row_hv_2_kernel;
  int /*<<< orphan*/ YCbCr_to_RGB_kernel;
  int /*<<< orphan*/ idct_block_kernel;
};
typedef TYPE_1__ stbi__jpeg;

/* Variables and functions */
int /*<<< orphan*/ stbi__YCbCr_to_RGB_row;
int /*<<< orphan*/ stbi__idct_block;
int /*<<< orphan*/ stbi__resample_row_hv_2;

void stbi__setup_jpeg(stbi__jpeg *j) {
  j->idct_block_kernel = stbi__idct_block;
  j->YCbCr_to_RGB_kernel = stbi__YCbCr_to_RGB_row;
  j->resample_row_hv_2_kernel = stbi__resample_row_hv_2;
# 2980 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/dabbertorres/WindowingOpenGL/refs/heads/master/Engine/src/util/stb_image.c"
}