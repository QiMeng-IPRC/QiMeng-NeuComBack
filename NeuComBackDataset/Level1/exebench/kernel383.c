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
struct TYPE_8__ {
  int _Carry;
  int _Zero;
  int _Negative;
};
struct TYPE_5__ {
  int l;
};
struct TYPE_6__ {
  TYPE_1__ B;
};
struct TYPE_7__ {
  TYPE_2__ A;
};

/* Variables and functions */
TYPE_4__ SA1;
TYPE_3__ SA1Registers;

void Op4AM1(void) {
  {};
  SA1._Carry = SA1Registers.A.B.l & 1;
  SA1Registers.A.B.l >>= 1;
  SA1._Zero = SA1Registers.A.B.l;
  SA1._Negative = SA1Registers.A.B.l;
  ;
}