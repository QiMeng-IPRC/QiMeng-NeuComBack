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
  float outputS;
  float const alpha;
  double outputS_old;
  double outputB_old;
  double outputB;
  double beta;
};
typedef TYPE_1__ DEMAFilter;

/* Variables and functions */

float filter_DEMA(DEMAFilter *filter, const float readIn) {
  filter->outputS =
      (filter->alpha * readIn) +
      ((1.0 - filter->alpha) * (filter->outputS_old + filter->outputB_old));
  filter->outputB = (filter->beta * (filter->outputS - filter->outputS_old)) +
                    ((1.0 - filter->beta) * filter->outputB_old);
  filter->outputS_old = filter->outputS;
  filter->outputB_old = filter->outputB;

  return filter->outputS + filter->outputB;
}