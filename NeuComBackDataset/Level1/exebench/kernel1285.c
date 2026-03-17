#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int repeat_sad_stop_counter;

void repeat_sad_stop(int num) {
  if (repeat_sad_stop_counter == 0) {

    return;
  } else if (repeat_sad_stop_counter < 0) {

    repeat_sad_stop_counter = num + 1;
  } else if (num < repeat_sad_stop_counter) {
    repeat_sad_stop_counter = num + 1;
  }
}