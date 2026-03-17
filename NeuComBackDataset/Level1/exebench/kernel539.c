#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ flist;
struct TYPE_4__ {
  int /*<<< orphan*/ *f;
};
typedef TYPE_1__ dir;

/* Variables and functions */

dir save(dir *d, flist *name) {
  d->f = name;
  return *d;
}