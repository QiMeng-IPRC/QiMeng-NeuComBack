#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ uint8;
typedef size_t uint32;
typedef scalar_t__ uint16;
typedef scalar_t__ int8;
typedef scalar_t__ int32;
struct TYPE_2__ {
  scalar_t__ *avReg;
  scalar_t__ vZero;
  scalar_t__ *pvPrgBank;
  scalar_t__ vPipe;
};

/* Variables and functions */
TYPE_1__ GSU;

void fx_beq(void) {
  uint8 v = GSU.vPipe;
  GSU.avReg[15]++;
  { GSU.vPipe = GSU.pvPrgBank[((uint32)((uint16)(GSU.avReg[15])))]; };
  if ((((uint32)((uint16)(GSU.vZero))) == 0))
    GSU.avReg[15] += ((int32)((int8)(v)));
  else
    GSU.avReg[15]++;
}