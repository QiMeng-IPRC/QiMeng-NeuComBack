#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ sm_addr_t;
struct TYPE_2__ {
  int /*<<< orphan*/ alloc_addr;
};

/* Variables and functions */
TYPE_1__ g_smdb_virtual;

void smdb_store_allocated_address(sm_addr_t addr_alloc) {
  g_smdb_virtual.alloc_addr = addr_alloc;
}