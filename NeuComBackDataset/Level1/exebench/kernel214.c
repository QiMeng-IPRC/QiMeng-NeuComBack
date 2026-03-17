#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ z_raw;
  scalar_t__ y_raw;
  scalar_t__ x_raw;
  scalar_t__ z;
  scalar_t__ y;
  scalar_t__ x;
};
struct TYPE_4__ {
  scalar_t__ *v;
};
struct TYPE_6__ {
  int delay;
  int threshold;
  TYPE_2__ last;
  scalar_t__ odr;
  scalar_t__ filter_enable;
  scalar_t__ position;
  TYPE_1__ offset;
  scalar_t__ enable;
  scalar_t__ initialize;
};

/* Variables and functions */
TYPE_3__ acc_data;

void yas_lis331dlh_init_data(void) {
  acc_data.initialize = 0;
  acc_data.enable = 0;
  acc_data.delay = 100;
  acc_data.offset.v[0] = 0;
  acc_data.offset.v[1] = 0;
  acc_data.offset.v[2] = 0;
  acc_data.position = 0;
  acc_data.threshold = 20000;
  acc_data.filter_enable = 0;
  acc_data.odr = 0;
  acc_data.last.x = 0;
  acc_data.last.y = 0;
  acc_data.last.z = 0;
  acc_data.last.x_raw = 0;
  acc_data.last.y_raw = 0;
  acc_data.last.z_raw = 0;
}