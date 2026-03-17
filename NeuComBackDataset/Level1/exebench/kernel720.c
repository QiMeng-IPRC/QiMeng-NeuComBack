#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int /*<<< orphan*/ sigev_signo;
  int /*<<< orphan*/ sigev_notify;
};
struct TYPE_4__ {
  char *aio_buf;
  int aio_nbytes;
  TYPE_1__ aio_sigevent;
  scalar_t__ aio_offset;
  scalar_t__ aio_fildes;
};

/* Variables and functions */
int /*<<< orphan*/ SIGEV_SIGNAL;
int /*<<< orphan*/ SIGIO;
TYPE_2__ kbcbuf;

void setup_aio_buffer(void) {
  static char input[1];

  kbcbuf.aio_fildes = 0;
  kbcbuf.aio_buf = input;
  kbcbuf.aio_nbytes = 1;
  kbcbuf.aio_offset = 0;

  kbcbuf.aio_sigevent.sigev_notify = SIGEV_SIGNAL;
  kbcbuf.aio_sigevent.sigev_signo = SIGIO;
}