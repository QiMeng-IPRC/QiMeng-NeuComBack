#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int fd;
};
typedef TYPE_1__ nar_writer;

/* Variables and functions */
int /*<<< orphan*/
memset(TYPE_1__ *, int /*<<< orphan*/, int);

int libnar_init_writer(nar_writer *nar, int fd) {
  if (nar == NULL) {
    do {
    } while (0);
    return -1;
  }

  memset(nar, 0, sizeof(nar_writer));

  nar->fd = fd;

  return 0;
}