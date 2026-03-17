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
  int /*<<< orphan*/ free;
  int /*<<< orphan*/ malloc;
};
typedef TYPE_1__ ll_point;
typedef int /*<<< orphan*/ ll_cb_malloc;
typedef int /*<<< orphan*/ ll_cb_free;

/* Variables and functions */

void ll_point_mem_callback(ll_point *pt, ll_cb_malloc m, ll_cb_free f) {
  pt->malloc = m;
  pt->free = f;
}