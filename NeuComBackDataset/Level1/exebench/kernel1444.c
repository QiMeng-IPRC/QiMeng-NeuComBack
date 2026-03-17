#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ i2c_cb;

/* Variables and functions */
int /*<<< orphan*/ *i2c_callbacks;

void i2cslave_init(unsigned int addr, i2c_cb *callbacks) {
  i2c_callbacks = callbacks;
}