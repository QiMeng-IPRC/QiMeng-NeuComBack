#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int NFEN0;
int P0;
int PM0;
int SCR02;
int SCR03;
int SDR02;
int SDR03;
int SIR03;
int SMR02;
int SMR03;
int SO0;
int SOE0;
int SOL0;
unsigned int SREIF1;
unsigned int SREMK1;
unsigned int SREPR01;
unsigned int SREPR11;
unsigned int SRIF1;
unsigned int SRMK1;
unsigned int SRPR01;
unsigned int SRPR11;
int ST0;
unsigned int STIF1;
unsigned int STMK1;
unsigned int STPR01;
unsigned int STPR11;

void R_UART1_Create(void) {
  ST0 |= (0x0008U) | (0x0004U);
  STMK1 = 1U;
  STIF1 = 0U;
  SRMK1 = 1U;
  SRIF1 = 0U;
  SREMK1 = 1U;
  SREIF1 = 0U;

  STPR11 = 1U;
  STPR01 = 1U;

  SRPR11 = 1U;
  SRPR01 = 1U;

  SREPR11 = 1U;
  SREPR01 = 1U;
  SMR02 = (0x0020U) | (0x0000U) | (0x0000U) | (0x0002U) | (0x0000U);
  SCR02 = (0x8000U) | (0x0000U) | (0x0000U) | (0x0080U) | (0x0010U) | (0x0007U);
  SDR02 = (0xCE00U);
  NFEN0 |= (0x04U);
  SIR03 = (0x0004U) | (0x0002U) | (0x0001U);
  SMR03 = (0x0020U) | (0x0000U) | (0x0100U) | (0x0000U) | (0x0002U) | (0x0000U);
  SCR03 = (0x4000U) | (0x0400U) | (0x0000U) | (0x0080U) | (0x0010U) | (0x0007U);
  SDR03 = (0xCE00U);
  SO0 |= (0x0004U);
  SOL0 |= (0x0000U);
  SOE0 |= (0x0004U);

  PM0 |= 0x02U;

  P0 |= 0x01U;
  PM0 &= 0xFEU;
}