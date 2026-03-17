#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int flags;
};
typedef TYPE_1__ history_t;
struct TYPE_8__ {
  int num;
  int /*<<< orphan*/ str;
};
struct TYPE_7__ {
  scalar_t__ h_next;
  scalar_t__ h_ref;
};
typedef TYPE_2__ History;
typedef TYPE_3__ HistEvent;

/* Variables and functions */
int /*<<< orphan*/ *he_errlist;
scalar_t__ history_def_next;

int history_getunique(History *h, HistEvent *ev) {
  if (h->h_next != history_def_next) {
    {
      ev->num = 14;
      ev->str = he_errlist[14];
    };
    return (-1);
  }
  ev->num = (((((history_t *)h->h_ref)->flags) & 1) != 0);
  return (0);
}