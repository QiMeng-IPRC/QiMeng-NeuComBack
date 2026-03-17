#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int TCR;
  int TER;
};
struct TYPE_3__ {
  int TRACECONFIG;
};

/* Variables and functions */
int CLOCK_TRACECONFIG_TRACEMUX_Pos;
int CLOCK_TRACECONFIG_TRACEMUX_Serial;
int CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz;
int CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos;
TYPE_2__ *ITM;
TYPE_1__ *NRF_CLOCK;

void nrf_power_swo_open() {
  NRF_CLOCK->TRACECONFIG =
      (CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz
       << CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos) |
      (CLOCK_TRACECONFIG_TRACEMUX_Serial << CLOCK_TRACECONFIG_TRACEMUX_Pos);
  ITM->TCR |= 1;
  ITM->TER |= 1;
}