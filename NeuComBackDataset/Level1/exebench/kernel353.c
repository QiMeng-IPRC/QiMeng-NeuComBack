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
  int closing;
  int /*<<< orphan*/ fd;
};
typedef TYPE_1__ cp_socket;

/* Variables and functions */
int /*<<< orphan*/ SHUT_RD;
int /*<<< orphan*/
shutdown(int /*<<< orphan*/, int /*<<< orphan*/);

void cp_socket_stop(cp_socket *sock) {

  sock->closing = 1;

  shutdown(sock->fd, SHUT_RD);
}