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
  size_t head;
};
typedef TYPE_1__ fmbuf;

/* Variables and functions */

void fmbuf_head_seek(fmbuf *pbuf, size_t offset, int direction) {
  if (direction == 0) {
    (pbuf->head) -= offset;
  } else {
    (pbuf->head) += offset;
  }
}