#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int h8cflag;
  int h8vflag;
  int h8zflag;
  int h8nflag;
  int h8hflag;
};
typedef TYPE_1__ h83xx_state;
typedef int UINT8;
typedef int UINT16;

/* Variables and functions */

void h8_cmp8(h83xx_state *h8, UINT8 src, UINT8 dst) {
  UINT16 res = (UINT16)dst - src;

  h8->h8cflag = (res & 0x100) ? 1 : 0;
  h8->h8vflag = (((dst) ^ (src)) & ((dst) ^ (res)) & 0x80) ? 1 : 0;
  h8->h8zflag = ((res & 0xff) == 0) ? 1 : 0;
  h8->h8nflag = (res & 0x80) ? 1 : 0;
  h8->h8hflag = ((src ^ dst ^ res) & 0x10) ? 1 : 0;
}