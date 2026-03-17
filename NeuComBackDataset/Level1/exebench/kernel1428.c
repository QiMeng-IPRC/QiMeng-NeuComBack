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
  int yuv_enhance_en;
  int /*<<< orphan*/ video_mode;
};
typedef TYPE_1__ IEP_MSG;

/* Variables and functions */
int /*<<< orphan*/ black_screen;

void iep_set_yuv_black_screen(IEP_MSG *msg) {
  msg->yuv_enhance_en = 1;
  msg->video_mode = black_screen;
}