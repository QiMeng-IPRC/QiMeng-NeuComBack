#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int actual_length;
  scalar_t__ max_length;
  char *chars;
};
typedef TYPE_1__ String;
typedef int /*<<< orphan*/ Returncode;
typedef int Int;
typedef int Bool;

/* Variables and functions */
int /*<<< orphan*/ ERR;
int /*<<< orphan*/ OK;

Returncode int_to_string(String *str, Int value) {
  Bool is_neg = value < 0;
  int abs = value;
  if (is_neg) {
    abs = -value;
  }
  int swap = 0;
  str->actual_length = is_neg;
  do {
    swap *= 10;
    swap += abs % 10;
    abs /= 10;
    if (str->max_length <= str->actual_length) {
      str->actual_length = 0;
      return ERR;
    }
    ++str->actual_length;
  } while (abs > 0);
  char *next = str->chars;
  if (is_neg) {
    *next = '-';
    ++next;
  }
  char *last = str->chars + str->actual_length;
  while (next < last) {
    *next = '0' + swap % 10;
    ++next;
    swap /= 10;
  }
  return OK;
}