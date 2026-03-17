#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ rl_end;
scalar_t__ *rl_line_buffer;
scalar_t__ rl_mark;
scalar_t__ rl_point;
scalar_t__ *the_line;

void _rl_init_line_state() {
  rl_point = rl_end = rl_mark = 0;
  the_line = rl_line_buffer;
  the_line[0] = 0;
}