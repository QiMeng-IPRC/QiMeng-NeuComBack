#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_4__;
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  unsigned short s1;
};
struct TYPE_6__ {
  unsigned char b3;
};
struct TYPE_8__ {
  TYPE_1__ byshort;
  TYPE_2__ bybytes;
};
struct TYPE_7__ {
  int dcbmode;
  TYPE_4__ dcbdata0;
};
struct newport_regs {
  TYPE_3__ set;
};

/* Variables and functions */

unsigned short newport_vc2_get(struct newport_regs *regs,
                               unsigned char vc2ireg) {
  regs->set.dcbmode = (0x00000000 | 0x00000000 | 0x00000001 | 0x00000008 |
                       (0x00001000 | 0x00800000 | 0x00040000));
  regs->set.dcbdata0.bybytes.b3 = vc2ireg;
  regs->set.dcbmode = (0x00000000 | 0x00000010 | 0x00000002 | 0x00000008 |
                       (0x00001000 | 0x00800000 | 0x00040000));
  return regs->set.dcbdata0.byshort.s1;
}