#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rssi_channel; double min_rssi; double max_rssi; } ;
typedef  TYPE_1__ FPVTelemetryTX ;

/* Variables and functions */
extern "C" { void fpv_telemetry_tx_set_rssi_sensor(FPVTelemetryTX * tx, int adc_channel, double min_rssi, double max_rssi);
 }

#include <vector>
#include <nlohmann/json.hpp>
#include <fstream>
#include <iomanip>
#include <clib/synthesizer.h>
#include <time.h>
#include <math.h>
#include <iostream>
char* output_file;
char* pre_accel_dump_file;  // optional dump file.
using json = nlohmann::json;
const char* __asan_default_options() {
  return "detect_leaks=0";
}

clock_t AcceleratorStart;
clock_t AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
  AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
  AcceleratorTotalNanos += (clock()) - AcceleratorStart;
}

void write_output(TYPE_1__* tx, int adc_channel, double min_rssi, double max_rssi) {
  json output_json;
  TYPE_1__ output_temp_1 = *tx;
  json output_temp_2;

  output_temp_2["rssi_channel"] = output_temp_1.rssi_channel;

  output_temp_2["min_rssi"] = output_temp_1.min_rssi;

  output_temp_2["max_rssi"] = output_temp_1.max_rssi;
  output_json["tx"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int tx_pointer__rssi_channel = input_json["tx"]["rssi_channel"];
  double tx_pointer__min_rssi = input_json["tx"]["min_rssi"];
  double tx_pointer__max_rssi = input_json["tx"]["max_rssi"];
  TYPE_1__ tx_pointer = {tx_pointer__rssi_channel, tx_pointer__min_rssi, tx_pointer__max_rssi};
  TYPE_1__* tx = &tx_pointer;
  int adc_channel = input_json["adc_channel"];
  double min_rssi = input_json["min_rssi"];
  double max_rssi = input_json["max_rssi"];
  clock_t begin = clock();
  fpv_telemetry_tx_set_rssi_sensor(tx, adc_channel, min_rssi, max_rssi);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tx, adc_channel, min_rssi, max_rssi);
}