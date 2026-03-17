#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct rgba {
  int r;
  int g;
  int b;
  int /*<<< orphan*/ a;
};

/* Variables and functions */

void rgba_desaturate(struct rgba *dest, struct rgba *src) {
  double avg = (src->r + src->g + src->b) / 3;

  dest->r = avg;
  dest->g = avg;
  dest->b = avg;
  dest->a = src->a;
}