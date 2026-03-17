#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct stat {
  int st_blksize;
  int /*<<< orphan*/ st_mode;
};

/* Variables and functions */
int /*<<< orphan*/ S_IFCHR;
int /*<<< orphan*/
memset(struct stat *, int /*<<< orphan*/, int);

int _fstat(int file, struct stat *st) {
  memset(st, 0, sizeof(*st));
  st->st_mode = S_IFCHR;
  st->st_blksize = 1024;
  return 0;
  file = file;
}