#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uint8;
struct can_frame {
  int *data;
};

/* Variables and functions */
scalar_t__ nextFrameRead;
size_t package_read_index;

void Can_Read_First_Frame(struct can_frame frame, uint8 *package) {
  uint8 i = 0;
  package_read_index = 0;
  nextFrameRead = 0;
  for (i = 0; i < 4; i++) {
    package[package_read_index] = frame.data[i + 4];
    package_read_index++;
  }
}