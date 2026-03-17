#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  char ls;
  char rs;
  char ts;
  char bs;
  char tl;
  char tr;
  char bl;
  char br;
};
struct TYPE_5__ {
  int height;
  int width;
  int starty;
  int startx;
  TYPE_1__ border;
};
typedef TYPE_2__ WIN;

/* Variables and functions */
int COLS;
int LINES;

void init_win_params(WIN *p_win) {
  p_win->height = 3;
  p_win->width = 10;
  p_win->starty = (LINES - p_win->height) / 2;
  p_win->startx = (COLS - p_win->width) / 2;

  p_win->border.ls = '|';
  p_win->border.rs = '|';
  p_win->border.ts = '-';
  p_win->border.bs = '-';
  p_win->border.tl = '+';
  p_win->border.tr = '+';
  p_win->border.bl = '+';
  p_win->border.br = '+';
}