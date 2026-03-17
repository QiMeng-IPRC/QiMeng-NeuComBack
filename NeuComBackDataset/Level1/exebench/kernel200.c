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
  int IRQParam;
  int /*<<< orphan*/ IRQHandler;
};
typedef int /*<<< orphan*/ OPL3_IRQHANDLER;
typedef TYPE_1__ OPL3;

/* Variables and functions */

void OPL3SetIRQHandler(OPL3 *chip, OPL3_IRQHANDLER IRQHandler, int param) {
  chip->IRQHandler = IRQHandler;
  chip->IRQParam = param;
}