#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int NULL_IDX;

void list_unlink_after(int *first, int *next, int head, int node, int prev) {
  if (prev == NULL_IDX)
    first[head] = next[node];
  else
    next[prev] = next[node];
}