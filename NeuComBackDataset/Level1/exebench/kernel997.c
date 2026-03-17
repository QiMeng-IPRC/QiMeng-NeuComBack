#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int DDRA;
int DDRB;
int DDRC;
int DDRD;
int PORTC;
int PORTD;

void DRAM_Init(void) {

  DDRD |= (1 << 5);
  DDRD |= (1 << 7);
  DDRD |= (1 << 6);
  DDRC |= (1 << 0);

  DDRA = 0xff;
  DDRC |= (1 << 1);

  DDRB &= 0xff ^ (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)));

  PORTD |= (1 << 5);
  PORTD |= (1 << 7);
  PORTD |= (1 << 6);
  PORTC |= (1 << 0);
}