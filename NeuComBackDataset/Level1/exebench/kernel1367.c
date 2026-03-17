#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ num_t;

/* Variables and functions */

void sum_ptr(num_t *a, num_t *b) {
  num_t y = *b;
  if (y > 0) {
    for (; y > 0; y--, (*a)++)
      ;
  } else {
    for (; y < 0; y++, (*a)--)
      ;
  }
}