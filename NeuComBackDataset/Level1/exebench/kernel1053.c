#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int highlightx;
  int name_width;
  int rightx;
  scalar_t__ hilite_w;
  scalar_t__ squeeze_info;
};
typedef TYPE_2__ TwmWindow;
struct TYPE_5__ {
  int titlex;
  scalar_t__ nright;
  int rightoff;
  int width;
};
struct TYPE_7__ {
  int TitlePadding;
  int FramePadding;
  TYPE_1__ TBInfo;
};
typedef scalar_t__ Bool;

/* Variables and functions */
TYPE_3__ *Scr;

void ComputeWindowTitleOffsets(TwmWindow *tmp_win, int width, Bool squeeze) {
  tmp_win->highlightx = (Scr->TBInfo.titlex + tmp_win->name_width);
  if (tmp_win->hilite_w || Scr->TBInfo.nright > 0)
    tmp_win->highlightx += Scr->TitlePadding;
  tmp_win->rightx = width - Scr->TBInfo.rightoff;
  if (squeeze && tmp_win->squeeze_info) {
    int rx =
        (tmp_win->highlightx + (tmp_win->hilite_w ? Scr->TBInfo.width * 2 : 0) +
         (Scr->TBInfo.nright > 0 ? Scr->TitlePadding : 0) + Scr->FramePadding);
    if (rx < tmp_win->rightx)
      tmp_win->rightx = rx;
  }
  return;
}