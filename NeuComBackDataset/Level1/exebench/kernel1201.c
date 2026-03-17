#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */

extern void NumericFormatToPrecision(char *format, int *precision, int *scale) {
  int fSmall, fSign;

  if (format == NULL) {
    *precision = 30;
    *scale = 6;
  } else {
    *precision = 0;
    *scale = 0;
    fSmall = 0;
    fSign = 0;
    while (*format != 0) {
      switch (*format) {
      case '-':
      case '+':
        if (!fSmall) {
          fSign = (!0);
        }
      case 'Z':
      case '\\':
      case '$':
      case '9':
        if (fSmall) {
          (*scale)++;
        }
        (*precision)++;
        break;
      case '.':
        fSmall = (!0);
        break;
      default:
        break;
      }
      format++;
    }
    if (fSign) {
      (*precision)--;
    }
  }
}