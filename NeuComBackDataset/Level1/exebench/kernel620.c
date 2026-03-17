#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uint8;

/* Variables and functions */
int *arpeggio_val;
int *fx;

void xlat_fx(int c, uint8 *fxt, uint8 *fxp) {
  uint8 h = (((*fxp) & 0xf0) >> 4), l = ((*fxp) & 0x0f);

  switch (*fxt = fx[*fxt]) {
  case 0x00:
    if (*fxp)
      arpeggio_val[c] = *fxp;
    else
      *fxp = arpeggio_val[c];
    break;
  case 0xfe:
    *fxt = 0x01;
    if (*fxp < 0x30)
      *fxp = ((*fxp >> 2) & 0x0f) | 0xe0;
    else
      *fxp = ((*fxp >> 4) & 0x0f) | 0xf0;
    break;
  case 0xfd:
    *fxt = 0x02;
    if (*fxp < 0x30)
      *fxp = ((*fxp >> 2) & 0x0f) | 0xe0;
    else
      *fxp = ((*fxp >> 4) & 0x0f) | 0xf0;
    break;
  case 0x0e:
    switch (h) {
    case 0x1:
    case 0x2:
    case 0x4:
    case 0x6:
    case 0x7:
    case 0x9:
    case 0xe:
    case 0xf:
      *fxp = *fxt = 0;
      break;
    case 0x3:
      *fxp = l | (0x03 << 4);
      break;
    case 0x5:
      *fxp = l | (0x04 << 4);
      break;
    case 0x8:
      *fxp = l | (0x07 << 4);
      break;
    case 0xa:
      *fxp = l | (0x06 << 4);
      break;
    case 0xb:
      *fxp = l | (0x0e << 4);
      break;
    case 0xc:
      if (l == 0)
        *fxt = *fxp = 0;
    }
    break;
  case 0xff:
    *fxt = *fxp = 0;
    break;
  }
}