#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int j;
  unsigned int a;
  unsigned int f;
};
typedef TYPE_1__ T;

/* Variables and functions */

void foo(T *x, unsigned int y) {
  if ((x->j = (y >= 0x100000)))
    y >>= 12;
  x->a = y;
  x->f = (y >> 16);
}