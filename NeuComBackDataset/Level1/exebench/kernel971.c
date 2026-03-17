#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *msgbuf;

void format_ack(int blocknum) {
  msgbuf[0] = 0;
  msgbuf[1] = 4;
  msgbuf[2] = (blocknum >> 8) & 0xff;
  msgbuf[3] = blocknum & 0xff;
}