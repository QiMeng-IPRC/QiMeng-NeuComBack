#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ sint32;
struct TYPE_3__ {
  int /*<<< orphan*/ npl;
};
typedef TYPE_1__ s_leftist_heap_t;

/* Variables and functions */

void leftist_heap_npl_set(s_leftist_heap_t *heap, sint32 npl) {
  if ((heap == NULL ? 1 : 0)) {
    return;
  } else {
    (heap)->npl = npl;
  }
}