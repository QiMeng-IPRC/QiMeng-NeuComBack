#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int x;

int check_prime(int n) {
  for (x = 2; x <= n / 2; x++) {
    if (n % x == 0) {
      return 10;
    }
  }
  return 2;
}