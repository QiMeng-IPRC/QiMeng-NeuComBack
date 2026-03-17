#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u4;

/* Variables and functions */
int b;
int c;
int d;
int e;
int *rsl;
int *state;

void aum(void) {
  u4 i;
  for (i = 0; i < 16; i++) {
    e = state[d & 16 - 1];
    state[d & 16 - 1] = b ^ c;
    b = c - d;
    c = d + e;
    rsl[i] = d = e + state[i];
  }
}