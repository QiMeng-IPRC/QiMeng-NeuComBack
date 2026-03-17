#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;

/* Variables and functions */
int *itoaBuffer;

u8 *u8toString(u8 num) {
  u8 i = 0, j = 0, temp[10] = {0};
  if (num == 0)
    temp[i++] = '0';
  while (num != 0) {
    temp[i++] = '0' + (num % 10);
    num /= 10;
  }

  for (j = 0; i > 0; j++) {
    itoaBuffer[j] = temp[--i];
  }
  itoaBuffer[j] = '\0';
  return itoaBuffer;
}