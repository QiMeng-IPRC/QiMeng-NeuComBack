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
  int length;
  int /*<<< orphan*/ *elem;
};
typedef int Status;
typedef TYPE_1__ SqList;
typedef int /*<<< orphan*/ Elemtype;

/* Variables and functions */

Status GetElem(const SqList L, int i, Elemtype *e) {
  if (i < 1 || i > L.length) {
    return 0;
  }
  *e = L.elem[i - 1];

  return 1;
}