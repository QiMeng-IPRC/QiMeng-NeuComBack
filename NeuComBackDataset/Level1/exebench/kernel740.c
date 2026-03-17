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
  int minBaudRate;
  int maxBaudRate;
  int requiredSerialPortFeatures;
};
typedef TYPE_1__ functionConstraint_t;

/* Variables and functions */
int SPF_SUPPORTS_CALLBACK;
int SPF_SUPPORTS_SBUS_MODE;

void sbusUpdateSerialRxFunctionConstraint(
    functionConstraint_t *functionConstraint) {
  functionConstraint->minBaudRate = 100000;
  functionConstraint->maxBaudRate = 100000;
  functionConstraint->requiredSerialPortFeatures =
      SPF_SUPPORTS_CALLBACK | SPF_SUPPORTS_SBUS_MODE;
}