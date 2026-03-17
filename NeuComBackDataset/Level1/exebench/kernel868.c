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
  int size;
  char *buf;
  scalar_t__ tail;
  scalar_t__ head;
};
typedef TYPE_1__ bufman_t;

/* Variables and functions */

int bufman_init(bufman_t *bufman, char *buffer, int bufsize) {
  if ((bufman == NULL) || (buffer == NULL) || (bufsize <= 0)) {
    return -1;
  }

  bufman->head = 0;
  bufman->tail = 0;
  bufman->size = bufsize;
  bufman->buf = buffer;

  return 0;
}