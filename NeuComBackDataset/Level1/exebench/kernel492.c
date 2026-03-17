#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int achar0;
int achar1;
int /*<<< orphan*/ failures;

void add_lit2uchar(void) {

  achar0 = achar0 + 5;

  if (achar0 != 5)
    failures++;

  achar0 += 10;

  if (achar0 != 15)
    failures++;

  achar0 = achar0 + 1;
  if (achar0 != 16)
    failures++;

  for (achar1 = 0; achar1 < 100; achar1++)
    achar0 += 2;

  if (achar0 != 216)
    failures++;
}