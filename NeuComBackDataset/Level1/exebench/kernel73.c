#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ STM32_RCC_APB2ENR;
int /*<<< orphan*/ STM32_RCC_PB2_SPI1;

void spi_enable_clock(void) { STM32_RCC_APB2ENR |= STM32_RCC_PB2_SPI1; }