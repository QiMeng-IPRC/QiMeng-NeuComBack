#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ maxDeepRssi ; 
extern  int /*<<< orphan*/  maxDeepRssiDetectionTime ; 
extern  int /*<<< orphan*/  now ; 
extern  scalar_t__ rssi2 ; 
extern "C" { void findMaxDeepRssi ();
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

void write_output() {
  json output_json;

  output_json["maxDeepRssi"] = maxDeepRssi;

  output_json["maxDeepRssiDetectionTime"] = maxDeepRssiDetectionTime;

  output_json["now"] = now;

  output_json["rssi2"] = rssi2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  maxDeepRssi = input_json["maxDeepRssi"];
  maxDeepRssiDetectionTime = input_json["maxDeepRssiDetectionTime"];
  now = input_json["now"];
  rssi2 = input_json["rssi2"];
  clock_t begin = clock();
  findMaxDeepRssi();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}