#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
char *str;

char *int_to_str(int num) {

  char temp;
  int index = 0, j = 0;
  char *t = str;
  int n = 5;
  while (n != 0) {
    *t++ = 0;
    n--;
  }
  if (num == 0) {
    str[index] = '0';
  }
  while (num > 0) {
    str[index++] = '0' + (num % 10);
    num /= 10;
  }

  for (j = 0; j < index / 2; j++) {
    temp = str[j];
    str[j] = str[index - 1 - j];
    str[index - 1 - j] = temp;
  }

  return str;
}