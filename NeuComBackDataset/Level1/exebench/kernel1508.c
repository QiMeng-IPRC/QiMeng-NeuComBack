#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int P1DIR;
int P1SEL;
int PERCFG;
int U1BAUD;
int U1CSR;
int U1GCR;
int U1UCR;

void usart_init(void) {
  P1DIR |= (1 << 2);
# 478 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/ajtowns/altos/refs/heads/master/ao-tools/target/adc-serial/adc_serial.c"
  PERCFG = ((1 << 1) | (0 << 0));

  P1SEL |= ((1 << 6) | (1 << 7));

  U1CSR = ((1 << 7) | (1 << 6));

  U1BAUD = 163;
  U1GCR = 10 << 0;

  U1UCR = ((1 << 7) | (0 << 6) | (1 << 5) | (0 << 4) | (0 << 3) | (1 << 2) |
           (1 << 1) | (0 << 0));
}