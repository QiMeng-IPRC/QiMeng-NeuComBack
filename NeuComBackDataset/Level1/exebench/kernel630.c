#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ byte;

/* Variables and functions */
int /*<<< orphan*/ *fifo;
int fifo_head;
int fifo_tail;

int fifo_enqueue(byte b) {
  int new_tail = (fifo_tail + 1) % 256;
  if (new_tail == fifo_head)
    return 0;
  fifo[fifo_tail] = b;
  fifo_tail = new_tail;
  return 1;
}