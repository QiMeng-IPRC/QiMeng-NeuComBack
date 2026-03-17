#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ failures;
int uchar0;

void or_lit2uchar(void) {

  if (uchar0)
    failures++;

  uchar0 |= 1;

  if (uchar0 != 1)
    failures++;

  uchar0 |= 2;

  if (uchar0 != 3)
    failures++;

  uchar0 |= 0x0e;

  if (uchar0 != 0x0f)
    failures++;
}