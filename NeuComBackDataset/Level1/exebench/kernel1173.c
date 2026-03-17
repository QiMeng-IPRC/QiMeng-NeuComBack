#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int picoos_int32;
typedef char picoos_char;
typedef int /*<<< orphan*/ pico_status_t;
typedef int /*<<< orphan*/ pico_Status;

/* Variables and functions */

pico_status_t picoos_string_to_int32(picoos_char str[], picoos_int32 *res) {

  int i;
  int neg;
  int val;
  int err;

  err = 0;
  i = 0;
  while ((str[i] <= ' ') && (str[i] != '\0')) {
    i++;
  }
  neg = 0;
  if (str[i] == '-') {
    neg = 1;
    i++;
  } else if (str[i] == '+') {
    i++;
  }
  val = 0;
  if ((str[i] < '0') || (str[i] > '9')) {
    err = 1;
  }
  while ((str[i] >= '0') && (str[i] <= '9')) {
    val = val * 10 + (str[i] - '0');
    i++;
  }
  while ((str[i] <= ' ') && (str[i] != '\0')) {
    i++;
  }
  if (neg == 1) {
    val = -val;
  }
  if ((err == 0) && (str[i] == '\0')) {
    (*res) = val;
    return (pico_Status)0;
  } else {
    (*res) = 0;
    return (pico_Status)-10;
  }
}