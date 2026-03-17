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
  int /*<<< orphan*/ flags;
  int /*<<< orphan*/ ptr;
  int /*<<< orphan*/ buf;
  scalar_t__ count;
};
typedef TYPE_1__ DIR;

/* Variables and functions */
int /*<<< orphan*/ _DIR_EOD;

void rewinddir(DIR *dirp) {

  dirp->count = 0;
  dirp->buf = dirp->ptr;
  dirp->flags &= ~_DIR_EOD;
}