#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct rgb {
  double r;
  double g;
  double b;
};

/* Variables and functions */

void realrgb(double r, double g, double b, struct rgb *to) {
  to->r = r;
  to->g = g;
  to->b = b;
}