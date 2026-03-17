#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int hypchar;
int hyplen;

int Wordlen(int *c) {
  int n = 0;
  hyplen = 0;
  while (*c != '\0' && *c != ' ' && *c != '\t') {
    if (*c == hypchar) {
      if (hyplen == 0)
        hyplen = n + 1;
    } else {
      n++;
    }
    c++;
  }
  return (n);
}