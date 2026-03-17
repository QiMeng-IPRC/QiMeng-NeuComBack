#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ u16;
struct TYPE_3__ {
  int /*<<< orphan*/ IER;
};
typedef TYPE_1__ UART_TypeDef;
typedef scalar_t__ FunctionalState;

/* Variables and functions */
scalar_t__ ENABLE;

void UART_ItConfig(UART_TypeDef *UARTx, u16 UART_Flag,
                   FunctionalState NewState) {
  if (NewState == ENABLE)
    UARTx->IER |= UART_Flag;
  else
    UARTx->IER &= ~UART_Flag;
}