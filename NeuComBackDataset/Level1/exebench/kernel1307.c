#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ x;
struct recfilter {
  double lastval;
  double a;
  scalar_t__ peak_detect;
  double maxval;
  double minval;
  scalar_t__ b;
};

/* Variables and functions */

double recfilter_apply_int(struct recfilter *f, int x) {

  f->lastval = f->a * (double)(x) + f->b * f->lastval;
  if (f->peak_detect != 0) {
    if (f->lastval > f->maxval) {
      f->maxval = f->lastval;
    }
    if (f->lastval < f->minval) {
      f->minval = f->lastval;
    }
  }
  return f->lastval;
}