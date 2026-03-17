#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int r;
  int s;
  int v;
};
typedef TYPE_1__ st;

/* Variables and functions */
TYPE_1__ inv;
int n;

st getst(void) {
  st s = inv;
  if (!n)
    return inv;
  n--, s.r = n / 6, s.s = n % 6, s.v = 1;
  return s;
}