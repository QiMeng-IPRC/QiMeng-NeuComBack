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
  int flags;
};

/* Variables and functions */
int DDRB;
int PCICR;
int PCMSK0;
int PORTB;
TYPE_1__ settings;

void limits_init() {
  DDRB &= ~(((1 << 1) | (1 << 2) | (1 << 3)));
  PORTB |= (((1 << 1) | (1 << 2) | (1 << 3)));
  if (((settings.flags & (1 << 3)) != 0)) {
    PCMSK0 |= ((1 << 1) | (1 << 2) | (1 << 3));
    PCICR |= (1 << 0);
  } else {
    PCMSK0 &= ~((1 << 1) | (1 << 2) | (1 << 3));
    PCICR &= ~(1 << 0);
  }
}