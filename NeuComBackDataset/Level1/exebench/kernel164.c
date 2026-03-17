#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *queue;

void addQueue(int iTime) {
  int iAlready = 0;
  int i;
  for (i = 1; i <= queue[0]; i++) {
    if (queue[i] == iTime)
      iAlready = 1;
  }

  if (iAlready == 0) {
    queue[0]++;
    queue[queue[0]] = iTime;
  }
}