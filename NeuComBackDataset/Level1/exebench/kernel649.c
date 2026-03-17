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
  int /*<<< orphan*/ fd;
};
typedef TYPE_1__ cssl_t;

/* Variables and functions */
int /*<<< orphan*/ CSSL_ERROR_NOTSTARTED;
int /*<<< orphan*/ CSSL_ERROR_NULLPOINTER;
int /*<<< orphan*/ cssl_error;
int /*<<< orphan*/ cssl_started;
int /*<<< orphan*/
tcdrain(int /*<<< orphan*/);

void cssl_drain(cssl_t *serial) {
  if (!cssl_started) {
    cssl_error = CSSL_ERROR_NOTSTARTED;
    return;
  }

  if (!serial) {
    cssl_error = CSSL_ERROR_NULLPOINTER;
    return;
  }

  tcdrain(serial->fd);
}