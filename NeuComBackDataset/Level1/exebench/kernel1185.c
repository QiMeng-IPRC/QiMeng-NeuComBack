#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ uchar;

/* Variables and functions */
int CKCON;
int EA;
int ES0;
int PCON;
scalar_t__ RI;
int SCON0;
scalar_t__ TF1;
int /*<<< orphan*/ TH1;
scalar_t__ TI;
int /*<<< orphan*/ TL1;
int TMOD;
int TR1;
scalar_t__ receiveHead0;
scalar_t__ receiveTail0;
scalar_t__ transmitIsBusy0;

void serial0_init(uchar reload_value) {
  ES0 = 0;

  TR1 = 0;

  SCON0 = 0x50;
  PCON |= 0x80;
# 95 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/AriZuu/OneWire/refs/heads/master/lib/userial/Link/DS87C550/ser550.c"
  TMOD = (TMOD & 0x0F) | 0x20;
  CKCON |= 0x10;
  TL1 = TH1 = reload_value;

  TF1 = 0;
  TR1 = 1;

  RI = 0;

  receiveHead0 = receiveTail0 = 0;
  transmitIsBusy0 = 0;
  TI = 0;
  EA = 1;
  ES0 = 1;
}