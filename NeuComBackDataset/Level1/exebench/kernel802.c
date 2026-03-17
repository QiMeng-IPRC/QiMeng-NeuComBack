#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  double l_min;
  double r_min;
};

/* Variables and functions */
TYPE_1__ df;

double find_df(int *flag) {
  if (df.l_min == 0.0) {
    if (df.r_min == 0.0) {
      return 0.0;
    } else {
      return -df.r_min;
    }
  } else {
    if (df.r_min == 0.0) {
      return df.l_min;
    } else {
      if (flag)
        *flag = 1;
      return 0.0;
    }
  }
}