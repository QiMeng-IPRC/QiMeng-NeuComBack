#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int COLS;
int ERR;
int LINES;
int OK;
int cursolX;
int cursolY;

int move(int y, int x) {
  if (y < 0 || LINES <= y)
    return ERR;
  if (x < 0 || COLS <= x)
    return ERR;

  cursolY = y;
  cursolX = x;
  return OK;
}