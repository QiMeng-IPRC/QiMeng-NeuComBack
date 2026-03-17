#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned char porta;
unsigned char portb;
unsigned char portc;

unsigned char d8255_read(unsigned char port) {
  switch (port) {
  case 1:
    return (porta);

  case 2:
    return (portb);

  case 3:
    return (portc);
  }
  return (255);
}