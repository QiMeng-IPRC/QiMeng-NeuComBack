#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned long cmd_src_ip;
int cmd_src_pid;

void set_cmd_src(unsigned long ip, int pid) {
  cmd_src_pid = pid;
  cmd_src_ip = ip;
}