#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int MSTR;
int PORTB;
int SPCR;
char SPDR;

void SPI_MasterTransmit(char cData) {
  PORTB &= ~(1 << 4);

  SPCR |= (1 << MSTR);

  SPDR = cData;
}