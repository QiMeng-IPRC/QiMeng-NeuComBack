#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *maindia;
int /*<<< orphan*/ n;
int *num;
int *rowdia;
int *vicedia;

void funiction(int len) {
  if (len == 8) {
    n++;
    return;
  }
  for (num[len] = 0; num[len] < 8; num[len]++)
    if (!rowdia[num[len]])
      if (!maindia[len + num[len]])
        if (!vicedia[7 - len + num[len]]) {
          rowdia[num[len]] = maindia[len + num[len]] =
              vicedia[7 - len + num[len]] = 1;
          funiction(len + 1);
          rowdia[num[len]] = maindia[len + num[len]] =
              vicedia[7 - len + num[len]] = 0;
        }
}