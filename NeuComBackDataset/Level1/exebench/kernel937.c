#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_16__ TYPE_8__;
typedef struct TYPE_15__ TYPE_7__;
typedef struct TYPE_14__ TYPE_6__;
typedef struct TYPE_13__ TYPE_5__;
typedef struct TYPE_12__ TYPE_4__;
typedef struct TYPE_11__ TYPE_3__;
typedef struct TYPE_10__ TYPE_2__;
typedef struct TYPE_9__ TYPE_1__;

/* Type definitions */
typedef int uint8;
struct TYPE_16__ {
  int _Zero;
  int _Negative;
};
struct TYPE_14__ {
  int l;
};
struct TYPE_13__ {
  int W;
  TYPE_6__ B;
};
struct TYPE_9__ {
  int l;
};
struct TYPE_10__ {
  int W;
  TYPE_1__ B;
};
struct TYPE_11__ {
  int l;
};
struct TYPE_12__ {
  TYPE_3__ B;
};
struct TYPE_15__ {
  TYPE_5__ X;
  TYPE_2__ S;
  TYPE_4__ P;
};

/* Variables and functions */
TYPE_8__ SA1;
TYPE_7__ SA1Registers;

void OpBASlow(void) {
  {};

  if ((SA1Registers.P.B.l & 16)) {
    SA1Registers.X.B.l = SA1Registers.S.B.l;
    SA1._Zero = SA1Registers.X.B.l;
    SA1._Negative = SA1Registers.X.B.l;
    ;
  } else {
    SA1Registers.X.W = SA1Registers.S.W;
    SA1._Zero = SA1Registers.X.W != 0;
    SA1._Negative = (uint8)(SA1Registers.X.W >> 8);
    ;
  }
}