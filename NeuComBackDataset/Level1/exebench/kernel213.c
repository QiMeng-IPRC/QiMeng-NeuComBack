#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct mb_interpreter_t {
  int /*<<< orphan*/ error_handler;
};
typedef int /*<<< orphan*/ mb_error_handler_t;

/* Variables and functions */

int mb_set_error_handler(struct mb_interpreter_t *s, mb_error_handler_t h) {
  int result = 0;

  if (!s) {
    result = 3;

    goto _exit;
  }

  s->error_handler = h;

_exit:
  return result;
}