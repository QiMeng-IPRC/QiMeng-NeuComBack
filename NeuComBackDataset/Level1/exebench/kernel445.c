#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int DWORD;
typedef char BYTE;

/* Variables and functions */

char *ExtractHex(DWORD *value, char *getPtr) {
  DWORD num;
  DWORD digit;
  BYTE c;

  while (*getPtr == ' ')
    getPtr++;
  num = 0;
  for (;;) {
    c = *getPtr;
    if ((c >= '0') && (c <= '9'))
      digit = (DWORD)(c - '0');
    else if ((c >= 'A') && (c <= 'F'))
      digit = (DWORD)(c - 'A' + 10);
    else if ((c >= 'a') && (c <= 'f'))
      digit = (DWORD)(c - 'a' + 10);
    else
      break;
    num <<= 4;
    num += digit;
    getPtr++;
  }
  *value = num;
  return getPtr;
}