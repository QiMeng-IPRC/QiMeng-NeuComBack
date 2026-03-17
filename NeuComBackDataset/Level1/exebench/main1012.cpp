#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  DEVICE_MINI2451 ; 
extern  TYPE_1__ config ; 
extern "C" { void mini2451(char *s, int lineno);
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

void write_output(char* s, int lineno) {
  json output_json;

  output_json["s"] = s;

  output_json["DEVICE_MINI2451"] = DEVICE_MINI2451;
  json output_temp_1;

  output_temp_1["device"] = config.device;
  output_json["config"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* s = strdup(input_json["s"].get<std::string>().c_str());
  int lineno = input_json["lineno"];
  DEVICE_MINI2451 = input_json["DEVICE_MINI2451"];
  int config__device = input_json["config"]["device"];
  config = {config__device};
  clock_t begin = clock();
  mini2451(s, lineno);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, lineno);
}