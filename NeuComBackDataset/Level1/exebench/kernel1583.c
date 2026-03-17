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
  int /*<<< orphan*/ suppress_debug;
};

/* Variables and functions */
int /*<<< orphan*/ TRUE;
TYPE_1__ the_logger;

void log_suppress_debug(void) { the_logger.suppress_debug = TRUE; }