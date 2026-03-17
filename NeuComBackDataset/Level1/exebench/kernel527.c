#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct conn_sslcon {
  int state;
  int ssl_want_write;
  scalar_t__ ssl_want_read;
  int /*<<< orphan*/ fd;
};

/* Variables and functions */
int /*<<< orphan*/
close(int /*<<< orphan*/);

int conn_closecon(struct conn_sslcon *con) {
  if (con->state == 1 || con->state == 2) {
    close(con->fd);
    con->state = 5;
    return 0;
  }
  if (con->state == 4 || con->state == 5)
    return 0;
  if (con->state != 3) {
    close(con->fd);
    con->state = 5;
    return 0;
  }
  con->ssl_want_read = 0;
  con->ssl_want_write = 1;
  con->state = 4;
  return 0;
}