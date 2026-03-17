#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ P2_AUDV;
scalar_t__ *P2_Bottom;
scalar_t__ *P2_Counters;
scalar_t__ *P2_Enable;
scalar_t__ *P2_Flags;
scalar_t__ *P2_Music_Bottom;
scalar_t__ *P2_Music_Count;
scalar_t__ *P2_Music_Top;
scalar_t__ P2_Rbyte;
scalar_t__ *P2_Top;
int P2_sreg;
scalar_t__ Pitfall2;

void Init_P2(void) {

  int i;

  for (i = 0; i < 8; i++) {
    P2_Flags[i] = 0;
    P2_Counters[i] = 0;
    P2_Top[i] = 0;
    P2_Bottom[i] = 0;
    P2_Enable[i] = 0;
    P2_Music_Top[i] = 0;
    P2_Music_Bottom[i] = 0;
    P2_Music_Count[i] = 0;
  }

  Pitfall2 = 0;
  P2_Rbyte = 0;
  P2_AUDV = 0;

  P2_sreg = 1;
}