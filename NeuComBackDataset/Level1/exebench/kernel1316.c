#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int lirc_t;
struct TYPE_2__ {
  size_t rptr;
  int sum;
  int *data;
};

/* Variables and functions */
TYPE_1__ rec_buffer;

void unget_rec_buffer_delta(lirc_t delta) {
  rec_buffer.rptr--;
  rec_buffer.sum -= delta & (0x00FFFFFF);
  rec_buffer.data[rec_buffer.rptr] = delta;
}