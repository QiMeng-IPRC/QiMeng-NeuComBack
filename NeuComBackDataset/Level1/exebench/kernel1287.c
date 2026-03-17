#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef enum States { ____Placeholder_States } States;

/* Variables and functions */
int END;
int ENTRY;
int SELECTTEST;

void changeState(int input, enum States *state) {
  switch (input) {
  case -1:

    *state = ENTRY;
    break;
  case 0:
    *state = END;
    break;
  case 1:
    *state = SELECTTEST;
    break;
  default:

    *state = ENTRY;
  }
}