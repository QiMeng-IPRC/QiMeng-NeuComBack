#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct yas_bma222_acceleration {
  int x;
  int y;
  int z;
  int x_raw;
  int y_raw;
  int z_raw;
};
struct TYPE_2__ {
  int filter_enable;
  int threshold;
  struct yas_bma222_acceleration last;
};

/* Variables and functions */
TYPE_1__ acc_data;

int yas_bma222_data_filter(int data[], int raw[],
                           struct yas_bma222_acceleration *accel) {
  int filter_enable = acc_data.filter_enable;
  int threshold = acc_data.threshold;

  if (filter_enable) {
    if ((((acc_data.last.x - data[0]) > 0
              ? (acc_data.last.x - data[0])
              : -(acc_data.last.x - data[0])) > threshold) ||
        (((acc_data.last.y - data[1]) > 0
              ? (acc_data.last.y - data[1])
              : -(acc_data.last.y - data[1])) > threshold) ||
        (((acc_data.last.z - data[2]) > 0
              ? (acc_data.last.z - data[2])
              : -(acc_data.last.z - data[2])) > threshold)) {
      accel->x = data[0];
      accel->y = data[1];
      accel->z = data[2];
      accel->x_raw = raw[0];
      accel->y_raw = raw[1];
      accel->z_raw = raw[2];
    } else {
      *accel = acc_data.last;
    }
  } else {
    accel->x = data[0];
    accel->y = data[1];
    accel->z = data[2];
    accel->x_raw = raw[0];
    accel->y_raw = raw[1];
    accel->z_raw = raw[2];
  }

  return (0);
}