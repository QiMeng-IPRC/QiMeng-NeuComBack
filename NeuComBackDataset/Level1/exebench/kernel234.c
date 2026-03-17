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
  int rssi_channel;
  double min_rssi;
  double max_rssi;
};
typedef TYPE_1__ FPVTelemetryTX;

/* Variables and functions */

void fpv_telemetry_tx_set_rssi_sensor(FPVTelemetryTX *tx, int adc_channel,
                                      double min_rssi, double max_rssi) {
  tx->rssi_channel = adc_channel;
  tx->min_rssi = min_rssi;
  tx->max_rssi = max_rssi;
}