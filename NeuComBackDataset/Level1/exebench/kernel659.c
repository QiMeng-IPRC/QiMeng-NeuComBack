#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ e_machine_type;
struct TYPE_2__ {
  int /*<<< orphan*/ machine_type;
};

/* Variables and functions */
TYPE_1__ console;

void console_set_machine_type(e_machine_type type) {

  console.machine_type = type;
}