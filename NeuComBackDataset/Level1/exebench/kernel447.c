#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int I;

/* Variables and functions */
int /*<<< orphan*/ failed;
int /*<<< orphan*/ passed;
int /*<<< orphan*/ skipped;
int /*<<< orphan*/ tests;

I tp(I x) {
  switch (x) {
  case 0:
    failed++;
    break;
  case 1:
    passed++;
    break;
  case 2:
    skipped++;
    break;
  }
  tests++;
  return x;
}