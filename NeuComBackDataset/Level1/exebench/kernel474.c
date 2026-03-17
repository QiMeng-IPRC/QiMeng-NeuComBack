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
  int /*<<< orphan*/ clean;
};
typedef TYPE_1__ STORE_METHOD;
typedef int /*<<< orphan*/ STORE_CLEANUP_FUNC_PTR;

/* Variables and functions */

int STORE_method_set_cleanup_function(STORE_METHOD *sm,
                                      STORE_CLEANUP_FUNC_PTR clean_f) {
  sm->clean = clean_f;
  return 1;
}