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
  int /*<<< orphan*/ device;
};

/* Variables and functions */
int /*<<< orphan*/ DEVICE_MINI2451;
TYPE_1__ config;

void mini2451(char *s, int lineno) { config.device = DEVICE_MINI2451; }