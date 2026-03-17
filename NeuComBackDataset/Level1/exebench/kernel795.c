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
  scalar_t__ asize;
  char *ptr;
  scalar_t__ size;
};
typedef TYPE_1__ gh_buf;

/* Variables and functions */

void gh_buf_clear(gh_buf *buf) {
  buf->size = 0;
  if (buf->asize > 0)
    buf->ptr[0] = '\0';
}