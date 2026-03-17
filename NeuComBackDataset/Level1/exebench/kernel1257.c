#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int BOOL;

/* Variables and functions */

BOOL GetSipLine(char *p_buf, int max_len, int *len, BOOL *bHaveNextLine) {
  char *ptr_start = p_buf;
  char *ptr_end = ptr_start;
  int line_len;

  *bHaveNextLine = 1;

  while ((*ptr_end != '\0') &&
         (!((*ptr_end == '\r') && (*(ptr_end + 1) == '\n'))) &&
         ((ptr_end - ptr_start) < max_len))
    ptr_end++;

  while (*(ptr_end - 1) == ',') {
    while ((*ptr_end == '\r') || (*ptr_end == '\n')) {
      *ptr_end = ' ';
      ptr_end++;
    }

    while ((*ptr_end != '\r') && (*ptr_end != '\n') && (*ptr_end != '\0') &&
           ((ptr_end - ptr_start) < max_len))
      ptr_end++;
  }

  line_len = ptr_end - ptr_start;

  if ((*ptr_end == '\r') && (*(ptr_end + 1) == '\n')) {
    *ptr_end = '\0';
    *(ptr_end + 1) = '\0';
    line_len += 2;
    if (line_len == max_len)
      *bHaveNextLine = 0;

    *len = line_len;
    return 1;
  } else
    return 0;
}