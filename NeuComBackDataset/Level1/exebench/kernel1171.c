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
  int /*<<< orphan*/ SPI_MR;
};
typedef TYPE_1__ Spi;

/* Variables and functions */
int /*<<< orphan*/ SPI_MR_LLB;

void spi_enable_loopback(Spi *p_spi) { p_spi->SPI_MR |= SPI_MR_LLB; }