#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct bar {
  char g;
  scalar_t__ e;
  scalar_t__ d;
  scalar_t__ c;
  scalar_t__ b;
  scalar_t__ a;
};

/* Variables and functions */

void foo1(struct bar *p, char tmp) {
  p->a = 0;
  p->b = 0;
  p->g = tmp;
  p->c = 0;
  p->d = 0;
  p->e = 0;
}