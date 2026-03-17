#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct conn_info {
  int /*<<< orphan*/ fd;
};
struct TYPE_3__ {
  int /*<<< orphan*/ events;
  int /*<<< orphan*/ fd;
};

/* Variables and functions */
int /*<<< orphan*/ POLLOUT;
int /*<<< orphan*/
memset(TYPE_1__ *, int /*<<< orphan*/, int);
TYPE_1__ *pending_list;
size_t pending_queries;

void wait_for_connected(struct conn_info *conn) {
  memset(&pending_list[pending_queries], 0,
         sizeof pending_list[pending_queries]);
  pending_list[pending_queries].fd = conn->fd;
  pending_list[pending_queries].events = POLLOUT;
  pending_queries++;
}