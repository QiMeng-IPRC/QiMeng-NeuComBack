#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int minimum;
  int maximum;
};
typedef TYPE_1__ MinMax;

/* Variables and functions */

void update_minmax(MinMax *values, int number, int *first) {
  if (*first) {
    values->minimum = number;
    values->maximum = number;
    *first -= 1;
  } else {
    values->maximum = (values->maximum < number ? number : values->maximum);
    values->minimum = (values->minimum > number ? number : values->minimum);
  }
}