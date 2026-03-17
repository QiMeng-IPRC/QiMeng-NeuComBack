#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uchar;

/* Variables and functions */
int T3CM;
int /*<<< orphan*/ TF1;
int TH1;
int TH3;
int TL1;
int TL3;
int TR1;
int *port_handle;

void SetBaudCOM(int portnum, uchar new_baud) {
  int reload_value;
  switch (new_baud) {
  case 0x00:

    reload_value = (256 - ((2 * 14745600) / (32L * 4 * 9600)));

    break;
  case 0x02:

    reload_value =
        (256 - ((256 - (256 - ((2 * 14745600) / (32L * 4 * 9600)))) / 2));

    break;
  case 0x04:

    reload_value =
        (256 - ((256 - (256 - ((2 * 14745600) / (32L * 4 * 9600)))) / 6));

    break;
  case 0x06:

    reload_value =
        (256 - ((256 - (256 - ((2 * 14745600) / (32L * 4 * 9600)))) / 12));

    break;
  default:
    return;
  }

  switch (port_handle[portnum]) {
  case 0:

    TR1 = 0;
    TL1 = TH1 = reload_value;
    TF1 = 0;
    TR1 = 1;

    break;
  case 1:
    TR1 = 0;
    TL1 = TH1 = reload_value;
    TF1 = 0;
    TR1 = 1;
    break;
  case 2:
    T3CM &= ~(0xC0);
    TL3 = TH3 = reload_value;
    T3CM |= 0x40;
    break;
  }
}