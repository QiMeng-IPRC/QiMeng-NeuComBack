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
  scalar_t__ initialize;
  int position;
};

/* Variables and functions */
TYPE_1__ acc_data;

int yas_bma250_set_position(int position) {

  if (acc_data.initialize == 0) {
    return (-2);
  }

  acc_data.position = position;

  return (0);
}