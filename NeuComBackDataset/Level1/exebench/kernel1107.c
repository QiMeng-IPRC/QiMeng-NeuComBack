#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ bson_err_handler;

/* Variables and functions */
int /*<<< orphan*/ err_handler;

bson_err_handler set_bson_err_handler(bson_err_handler func) {
  bson_err_handler old = err_handler;
  err_handler = func;
  return old;
}