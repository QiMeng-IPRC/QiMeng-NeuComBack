#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_12__ TYPE_6__;
typedef struct TYPE_11__ TYPE_5__;
typedef struct TYPE_10__ TYPE_4__;
typedef struct TYPE_9__ TYPE_3__;
typedef struct TYPE_8__ TYPE_2__;
typedef struct TYPE_7__ TYPE_1__;

/* Type definitions */
struct TYPE_12__ {
  int /*<<< orphan*/ _Negative;
  int /*<<< orphan*/ _Zero;
};
struct TYPE_9__ {
  int /*<<< orphan*/ l;
};
struct TYPE_10__ {
  TYPE_3__ B;
};
struct TYPE_7__ {
  int /*<<< orphan*/ l;
};
struct TYPE_8__ {
  TYPE_1__ B;
};
struct TYPE_11__ {
  TYPE_4__ A;
  TYPE_2__ Y;
};

/* Variables and functions */
TYPE_6__ SA1;
TYPE_5__ SA1Registers;

void Op98M1(void) {
  {};
  SA1Registers.A.B.l = SA1Registers.Y.B.l;
  SA1._Zero = SA1Registers.A.B.l;
  SA1._Negative = SA1Registers.A.B.l;
  ;
}