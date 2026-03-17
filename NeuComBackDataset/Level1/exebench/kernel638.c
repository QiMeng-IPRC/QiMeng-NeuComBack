#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  unsigned int x;
  unsigned int y;
  unsigned int w;
  unsigned int h;
};
struct TYPE_5__ {
  unsigned int w;
  unsigned int h;
  scalar_t__ y;
  scalar_t__ x;
};
struct TYPE_4__ {
  unsigned int w_w;
  unsigned int w_h;
  unsigned int w;
  unsigned int h;
  scalar_t__ y;
  scalar_t__ x;
  scalar_t__ w_y;
  scalar_t__ w_x;
};

/* Variables and functions */
TYPE_3__ overlay;
TYPE_2__ scaler_dst;
TYPE_1__ scaler_src;
scalar_t__ sequence_type;
unsigned int source_format;
unsigned int video_height;
unsigned int video_width;

void tcc_set_video_output(unsigned int uiOutWidth, unsigned int uiOutHeight,
                          unsigned int uiSrcStride, unsigned int uiDstStartH,
                          unsigned int uiDstStartV, unsigned int uiDstWidth,
                          unsigned int uiDstHeight, unsigned int uiSrcFormat,
                          int interlaced) {

  source_format = uiSrcFormat;
  video_width = uiOutWidth;
  video_height = uiOutHeight;

  scaler_src.w_x = 0;
  scaler_src.w_y = 0;
  scaler_src.w_w = uiOutWidth;
  scaler_src.w_h = uiOutHeight;

  scaler_src.x = 0;
  scaler_src.y = 0;
  scaler_src.w = uiOutWidth;
  scaler_src.h = uiOutHeight;

  scaler_dst.x = 0;
  scaler_dst.y = 0;
  scaler_dst.w = uiDstWidth;
  scaler_dst.h = uiDstHeight;

  overlay.x = uiDstStartH;
  overlay.y = uiDstStartV;
  overlay.w = uiDstWidth;
  overlay.h = uiDstHeight;
# 287 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Stevenwork/Innov_code/refs/heads/master/v0.9/capapp/tcc_linux_system.c"
  { sequence_type = 0; }
}