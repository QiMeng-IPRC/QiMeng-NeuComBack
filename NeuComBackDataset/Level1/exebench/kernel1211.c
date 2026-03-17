#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/
close(int);
int *remote_socks;

void connection_closed_by_peer(int sock) {
  int i;

  for (i = 0; i < 4; i++)
    if (remote_socks[i] == sock)
      remote_socks[i] = 0;
  ;
  close(sock);
}