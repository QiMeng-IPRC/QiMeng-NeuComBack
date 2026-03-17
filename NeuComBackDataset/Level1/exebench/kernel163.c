#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ ui3b;

/* Variables and functions */

void ClStrAppendChar(int *L0, ui3b *r, ui3b c) {
  unsigned short L = *L0;

  if (512 != L) {
    r[L] = c;
    L++;
    *L0 = L;
  }
}