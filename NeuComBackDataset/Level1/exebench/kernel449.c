#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef unsigned char db;

/* Variables and functions */
unsigned int AddressBus;
unsigned char DataBus;
unsigned char cpu_Rbyte;
int debugflag;

unsigned char ReadROM(unsigned int adr) {
  db dummy;

  AddressBus = (adr & 0xffff);
  dummy = DataBus;
  debugflag = 1;

  debugflag = 0;
  cpu_Rbyte = DataBus;
  DataBus = dummy;
  return (cpu_Rbyte);
}