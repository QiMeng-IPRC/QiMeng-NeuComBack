#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int RXEN0;
int RXEN1;
int TXEN0;
int TXEN1;
unsigned long UBRR0H;
unsigned long UBRR0L;
unsigned long UBRR1H;
unsigned long UBRR1L;
int UCSR0B;
int UCSR0C;
int UCSR1B;
int UCSR1C;
int UCSZ00;
int UCSZ01;
int UCSZ10;
int UCSZ11;

void initUSART(unsigned char usartNum) {
  if (usartNum != 1) {

    UCSR0B |= (1 << RXEN0) | (1 << TXEN0);
    UCSR0C |= (1 << UCSZ00) | (1 << UCSZ01);

    UBRR0L = (((8000000UL / (9600 * 16UL))) - 1);

    UBRR0H = ((((8000000UL / (9600 * 16UL))) - 1) >> 8);
  } else {

    UCSR1B |= (1 << RXEN1) | (1 << TXEN1);
    UCSR1C |= (1 << UCSZ10) | (1 << UCSZ11);

    UBRR1L = (((8000000UL / (9600 * 16UL))) - 1);

    UBRR1H = ((((8000000UL / (9600 * 16UL))) - 1) >> 8);
  }
}