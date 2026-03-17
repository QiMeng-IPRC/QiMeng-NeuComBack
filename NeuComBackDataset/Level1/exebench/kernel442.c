#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int SO0;
int SOE0;
unsigned int SREIF0;
unsigned int SREMK0;
unsigned int SRIF0;
unsigned int SRMK0;
int SS0;
unsigned int STIF0;
unsigned int STMK0;

void R_UART0_Start(void) {
  STIF0 = 0U;
  STMK0 = 0U;
  SRIF0 = 0U;
  SRMK0 = 0U;
  SREIF0 = 0U;
  SREMK0 = 0U;
  SO0 |= (0x0001U);
  SOE0 |= (0x0001U);
  SS0 |= (0x0002U) | (0x0001U);
}