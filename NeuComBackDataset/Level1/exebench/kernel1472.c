#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ i;

int foo(int bar) {
  int idx;
  int res = 0;

  idx = 50;

  for (idx = 1; idx < bar; idx++) {

    res += idx;
  }
  switch (res) {
  case 1:

    res++;
    break;
  case 2:

    res--;
    break;
  case 3:

    res = 0;
    break;
  case 4:

    res++;
    break;
  case 5:

    res--;
    break;
  default:

    res = 0;
    break;
  }

  res *= idx;

  i++;

  return (res);
}