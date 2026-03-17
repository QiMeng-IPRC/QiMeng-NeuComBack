#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned char al_reg;
unsigned char ax_reg;
unsigned char bh_reg;
unsigned char di_reg;
unsigned char eax_reg;
unsigned char edi_reg;

unsigned char indep_regnum(unsigned char reg) {
  if (reg >= al_reg && reg <= bh_reg)
    return reg - al_reg;
  else if (reg >= ax_reg && reg <= di_reg)
    return reg - ax_reg;
  else if (reg >= eax_reg && reg <= edi_reg)
    return reg - eax_reg;
  else
    return 255;
}