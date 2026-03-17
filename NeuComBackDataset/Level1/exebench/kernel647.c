#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int STM32_COMP_CMP1EN;
int STM32_COMP_CMP1INSEL_INM4;
int STM32_COMP_CMP1INSEL_INM6;
int STM32_COMP_CMP1INSEL_MASK;
int STM32_COMP_CSR;

void pd_select_polarity(int polarity) {

  STM32_COMP_CSR =
      (STM32_COMP_CSR & ~STM32_COMP_CMP1INSEL_MASK) | STM32_COMP_CMP1EN |
      (polarity ? STM32_COMP_CMP1INSEL_INM4 : STM32_COMP_CMP1INSEL_INM6);
}