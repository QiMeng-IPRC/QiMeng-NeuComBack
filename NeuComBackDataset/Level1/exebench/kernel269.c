#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct cl {
  int /*<<< orphan*/ state;
  int /*<<< orphan*/ sock6;
  int /*<<< orphan*/ sock4;
};

/* Variables and functions */
int /*<<< orphan*/ CL_UNUSED;
int /*<<< orphan*/ SHUT_RDWR;
struct cl *clients;
int /*<<< orphan*/
close(int /*<<< orphan*/);
int /*<<< orphan*/
shutdown(int /*<<< orphan*/, int /*<<< orphan*/);

void del_client(int cn) {
  struct cl *cl = &clients[cn];

  shutdown(cl->sock4, SHUT_RDWR);
  shutdown(cl->sock6, SHUT_RDWR);
  close(cl->sock4);
  close(cl->sock6);

  cl->state = CL_UNUSED;
}