#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct opencl_config {char const* preferred_platform; int ignore_blacklist; } ;

/* Variables and functions */
extern "C" { void set_preferred_platform(struct opencl_config *cfg, const char *s);
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

void write_output(struct opencl_config* cfg, char* s) {
  json output_json;
  struct opencl_config output_temp_1 = *cfg;
  json output_temp_2;

  output_temp_2["preferred_platform"] = output_temp_1.preferred_platform;

  output_temp_2["ignore_blacklist"] = output_temp_1.ignore_blacklist;
  output_json["cfg"] = output_temp_2;

  output_json["s"] = s;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* cfg_pointer__preferred_platform = strdup(input_json["cfg"]["preferred_platform"].get<std::string>().c_str());
  int cfg_pointer__ignore_blacklist = input_json["cfg"]["ignore_blacklist"];
  struct opencl_config cfg_pointer = {cfg_pointer__preferred_platform, cfg_pointer__ignore_blacklist};
  struct opencl_config* cfg = &cfg_pointer;
  char* s = strdup(input_json["s"].get<std::string>().c_str());
  clock_t begin = clock();
  set_preferred_platform(cfg, s);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cfg, s);
}