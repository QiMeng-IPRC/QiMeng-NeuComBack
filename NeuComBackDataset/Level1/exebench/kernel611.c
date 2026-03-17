#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int utf16_char;
typedef int unicode_char;

/* Variables and functions */

int uchar_from_utf16(unicode_char *uchar, const utf16_char *utf16char,
                     size_t count) {
  int rc = -1;

  if (utf16char == NULL || count == 0)
    return 0;

  if (utf16char[0] >= 0xd800 && utf16char[0] <= 0xdbff) {
    if (count > 1 && utf16char[1] >= 0xdc00 && utf16char[1] <= 0xdfff) {
      *uchar =
          0x10000 + ((utf16char[0] & 0x3ff) * 0x400) + (utf16char[1] & 0x3ff);
      rc = 2;
    }
  }

  else if (utf16char[0] < 0xdc00 || utf16char[0] > 0xdfff) {
    *uchar = utf16char[0];
    rc = 1;
  }

  return rc;
}