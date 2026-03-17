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
struct TYPE_4__ {
  int xres;
  int yres;
};
struct TYPE_3__ {
  int width;
  int height;
  int x1;
  int y1;
  int x2;
  int y2;
};

/* Variables and functions */
TYPE_2__ g_screeninfo_var;
TYPE_1__ g_window;

void set_window_dimension() {
  g_window.width = 640;
  g_window.height = 480;
  g_window.x1 = g_screeninfo_var.xres / 2 - g_window.width / 2;
  g_window.y1 = g_screeninfo_var.yres / 2 - g_window.height / 2;
  g_window.x2 = g_screeninfo_var.xres / 2 + g_window.width / 2;
  g_window.y2 = g_screeninfo_var.yres / 2 + g_window.height / 2;
}