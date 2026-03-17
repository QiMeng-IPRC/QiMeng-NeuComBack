#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ ES0;
scalar_t__ ET1;
int PCON;
scalar_t__ RI;
int SCON;
int TH1;
scalar_t__ TI;
int TMOD;
int TR1;

void InitSerial(void) {
# 74 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/lisency/hmi-w7100a/refs/heads/master/Drivers/serial.c"
  ET1 = 0;
  TMOD = 0x20;
  PCON |= 0x80;
  TH1 = 0xFC;
  TR1 = 1;
  SCON = 0x52;

  ES0 = 0;
  RI = 0;
  TI = 0;
}