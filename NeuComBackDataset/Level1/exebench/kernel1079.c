#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct wsock_table {
  int flag_exit;
  int flag_running;
};

/* Variables and functions */
int /*<<< orphan*/
usleep(int);

void wsock_release_tcp_table(struct wsock_table *table, int element_count,
                             int buff_size, int timeout) {
  table->flag_exit = 1;
  while (table->flag_running == 1) {
    usleep(10000);
  }
}