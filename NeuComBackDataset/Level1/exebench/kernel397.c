#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct conn_info {
  int dummy;
};

/* Variables and functions */
int /*<<< orphan*/ pending_queries;

void unregister_wait(struct conn_info *conn) {

  (void)conn;
  pending_queries--;
}