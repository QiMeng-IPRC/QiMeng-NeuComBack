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
  int right;
  int bottom;
  scalar_t__ top;
  scalar_t__ left;
};

/* Variables and functions */
int COLS;
int LINES;
TYPE_1__ content_box;
scalar_t__ pref_messageline;
int pref_screenheight;
int pref_screenwidth;

void compute_content_box() {

  int width, height;

  if (pref_screenwidth)
    width = pref_screenwidth;
  else
    width = COLS;
  if (pref_screenheight)
    height = pref_screenheight;
  else
    height = LINES;

  content_box.left = 0;
  content_box.top = 0;
  content_box.right = width;
  content_box.bottom = height;

  if (pref_messageline && height > 0)
    content_box.bottom--;
}