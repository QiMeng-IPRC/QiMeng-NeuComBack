#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ mpg_off_t;
struct TYPE_3__ {
  int /*<<< orphan*/ err;
};
typedef TYPE_1__ mpg123_handle_t;

/* Variables and functions */
int MPG123_ERR;
int /*<<< orphan*/ MPG123_NO_READER;

int bad_back_bytes(mpg123_handle_t *mh, mpg_off_t bytes) {
  mh->err = MPG123_NO_READER;
  return MPG123_ERR;
}