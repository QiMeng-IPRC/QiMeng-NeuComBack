#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
long clip_x1;
long clip_x2;
long clip_y1;
long clip_y2;
int csp;
long *cstack_x1;
long *cstack_x2;
long *cstack_y1;
long *cstack_y2;

void clip_push(long x1, long y1, long x2, long y2) {
  if (csp >= 64 - 1)
    return;

  csp++;
  clip_x1 = cstack_x1[csp] = ((clip_x1) > (x1) ? (clip_x1) : (x1));
  clip_y1 = cstack_y1[csp] = ((clip_y1) > (y1) ? (clip_y1) : (y1));
  clip_x2 = cstack_x2[csp] = ((clip_x2) < (x2) ? (clip_x2) : (x2));
  clip_y2 = cstack_y2[csp] = ((clip_y2) < (y2) ? (clip_y2) : (y2));
}