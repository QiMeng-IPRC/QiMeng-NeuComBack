#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct io_funcs_t {
  int /*<<< orphan*/ catdoc_tell;
  int /*<<< orphan*/ catdoc_seek;
  int /*<<< orphan*/ catdoc_eof;
  int /*<<< orphan*/ catdoc_read;
};

/* Variables and functions */
int /*<<< orphan*/ ole_eof;
int /*<<< orphan*/ ole_read;
int /*<<< orphan*/ ole_seek;
int /*<<< orphan*/ ole_tell;

void set_ole_func(struct io_funcs_t *io_funcs) {
  io_funcs->catdoc_read = ole_read;
  io_funcs->catdoc_eof = ole_eof;
  io_funcs->catdoc_seek = ole_seek;
  io_funcs->catdoc_tell = ole_tell;
}