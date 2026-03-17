#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int g;

__attribute__((noinline)) void foo(int n) {
  switch (n) {
  case 99:
    g += 2;
    break;
  case 1:
    g++;
    break;
  case 100:
    g += 1;
    break;
  case 4:
    g += 3;
    break;
  case 5:
    g += 4;
    break;
  case 6:
    g += 5;
    break;
  case 7:
    g += 6;
    break;
  case 8:
    g += 7;
    break;
  case 9:
    g += 8;
    break;
  default:
    g += 8;
    break;
  }
}