#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int /*<<< orphan*/ a;
  int /*<<< orphan*/ len;
  int /*<<< orphan*/ s;
};
typedef TYPE_1__ stralloc;
struct TYPE_6__ {
  int /*<<< orphan*/ op;
  scalar_t__ fd;
  int /*<<< orphan*/ a;
  int /*<<< orphan*/ n;
  scalar_t__ p;
  int /*<<< orphan*/ x;
};
typedef TYPE_2__ buffer;

/* Variables and functions */
int /*<<< orphan*/ dummyreadwrite;

void buffer_fromsa(buffer *b, stralloc *sa) {
  b->x = sa->s;
  b->p = 0;
  b->n = sa->len;
  b->a = sa->a;
  b->fd = 0;
  b->op = dummyreadwrite;
}