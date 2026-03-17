#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int reg_status;
};
typedef int /*<<< orphan*/ ENUM_AM;

/* Variables and functions */
TYPE_1__ g_cpu;

void handle_SEC(ENUM_AM m) { g_cpu.reg_status |= 0b00000001; }