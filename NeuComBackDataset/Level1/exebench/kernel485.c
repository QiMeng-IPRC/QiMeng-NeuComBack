#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *signal_queue_buf;
scalar_t__ signal_queue_length;
scalar_t__ signal_queue_rd_idx;

int slinke_readdata(int timeout) {
  int result;

  if (signal_queue_buf == NULL)
    return 0;
  if (signal_queue_rd_idx < signal_queue_length) {
    result = signal_queue_buf[signal_queue_rd_idx++];
  } else {
    result = 0;
  }

  do {
  } while (0);
  return result;
}