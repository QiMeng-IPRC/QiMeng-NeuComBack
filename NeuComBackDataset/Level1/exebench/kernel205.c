#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ gfp_t;

/* Variables and functions */
int /*<<< orphan*/ gfp_allowed_mask;

__attribute__((always_inline)) void set_gfp_allowed_mask(gfp_t mask) {
  gfp_allowed_mask = mask;
}