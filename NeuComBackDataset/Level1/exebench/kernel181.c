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
  int /*<<< orphan*/ l_type;
};

/* Variables and functions */
int /*<<< orphan*/ F_SETLKW;
int /*<<< orphan*/ F_WRLCK;
int /*<<< orphan*/
fcntl(int /*<<< orphan*/, int /*<<< orphan*/, TYPE_1__ *);
TYPE_1__ file_lock;
int /*<<< orphan*/ mmap_fd;

void lock_file() {
  file_lock.l_type = F_WRLCK;
  fcntl(mmap_fd, F_SETLKW, &file_lock);
}