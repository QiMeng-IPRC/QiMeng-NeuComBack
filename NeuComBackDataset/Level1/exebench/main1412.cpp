#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct event_config {int n_cpus_hint; } ;

/* Variables and functions */
extern "C" { int event_config_set_num_cpus_hint(struct event_config *cfg, int cpus);
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

void write_output(struct event_config* cfg, int cpus, int returnv) {
  json output_json;
  struct event_config output_temp_1 = *cfg;
  json output_temp_2;

  output_temp_2["n_cpus_hint"] = output_temp_1.n_cpus_hint;
  output_json["cfg"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cfg_pointer__n_cpus_hint = input_json["cfg"]["n_cpus_hint"];
  struct event_config cfg_pointer = {cfg_pointer__n_cpus_hint};
  struct event_config* cfg = &cfg_pointer;
  int cpus = input_json["cpus"];
  clock_t begin = clock();
  int returnv = event_config_set_num_cpus_hint(cfg, cpus);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cfg, cpus, returnv);
}