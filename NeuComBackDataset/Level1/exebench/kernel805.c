#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ PF_MALLOC;
typedef int /*<<< orphan*/ PF_FREE;

/* Variables and functions */
int /*<<< orphan*/ sg_pfFree;
int /*<<< orphan*/ sg_pfMalloc;

void Moe_Reg_Malloc_Free(PF_MALLOC pfMalloc, PF_FREE pfFree) {
  sg_pfMalloc = pfMalloc;
  sg_pfFree = pfFree;
  return;
}