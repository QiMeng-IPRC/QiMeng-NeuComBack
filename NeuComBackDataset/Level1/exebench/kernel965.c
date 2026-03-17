#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int KeyCode;

/* Variables and functions */
int MOD_CTRL;
int MOD_META;
int MOD_SHIFT;

size_t parse_modifiers(const char *str, KeyCode *modifiersp) {
  KeyCode modifiers = 0;
  size_t i = 0;

  while (1) {
    KeyCode tmp;
    switch (str[i]) {
    case 'C':
      tmp = MOD_CTRL;
      break;
    case 'M':
      tmp = MOD_META;
      break;
    case 'S':
      tmp = MOD_SHIFT;
      break;
    default:
      goto end;
    }
    if (str[i + 1] != '-' || modifiers & tmp) {
      goto end;
    }
    modifiers |= tmp;
    i += 2;
  }

end:
  *modifiersp = modifiers;
  return i;
}