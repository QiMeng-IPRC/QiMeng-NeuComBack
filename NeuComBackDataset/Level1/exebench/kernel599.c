#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct token {
  int pos;
  int len;
};

/* Variables and functions */

int separate(const char *s, struct token *t, int m) {
  int c, i, j, n, state;

  i = 0;
  j = 0;
  n = 0;
  state = 0;
  while (n < m) {
    c = s[i];
    switch (state) {
    case 0:
      switch (c) {
      case 0:
      case '\r':
      case '\n':
      case '#':
        return n;
      case ',':
      case ' ':
      case '(':
      case ')':
      case '\t':
        break;
      default:
        j = i;
        state = 1;
        break;
      }
      break;
    case 1:
      switch (c) {
      case 0:
      case '\r':
      case '\n':
      case '#':
        t[n].pos = j;
        t[n++].len = i - j;
        return n;
      case ',':
      case ' ':
      case '(':
      case ')':
      case '\t':
        t[n].pos = j;
        t[n++].len = i - j;
        state = 0;
        break;
      }
    }
    ++i;
  }
  return n;
}