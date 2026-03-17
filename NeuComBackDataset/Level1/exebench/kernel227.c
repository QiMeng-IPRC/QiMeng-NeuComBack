#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ sighandler_t;

/* Variables and functions */
int /*<<< orphan*/ *default_sig_handler;
int /*<<< orphan*/ sig_invalid_handler;
int /*<<< orphan*/ *signal_handler;

void sig_init(void) {
  int i;

  for (i = 0; i < 32; i++) {
    default_sig_handler[i] = sig_invalid_handler;
  }

  default_sig_handler[14] = ((sighandler_t)1);
  default_sig_handler[10] = ((sighandler_t)1);
  default_sig_handler[12] = ((sighandler_t)1);
  default_sig_handler[29] = ((sighandler_t)1);
  default_sig_handler[21] = ((sighandler_t)1);
  for (i = 0; i < 32; i++) {
    signal_handler[i] = default_sig_handler[i];
  }
}