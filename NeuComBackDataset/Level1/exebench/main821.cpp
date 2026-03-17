#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  double u64 ;
struct stats {double n; double mean; double M2; } ;

/* Variables and functions */
extern "C" { void update_stats(struct stats *stats, u64 val);
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

void write_output(struct stats* stats, double val) {
  json output_json;
  struct stats output_temp_1 = *stats;
  json output_temp_2;

  output_temp_2["n"] = output_temp_1.n;

  output_temp_2["mean"] = output_temp_1.mean;

  output_temp_2["M2"] = output_temp_1.M2;
  output_json["stats"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double stats_pointer__n = input_json["stats"]["n"];
  double stats_pointer__mean = input_json["stats"]["mean"];
  double stats_pointer__M2 = input_json["stats"]["M2"];
  struct stats stats_pointer = {stats_pointer__n, stats_pointer__mean, stats_pointer__M2};
  struct stats* stats = &stats_pointer;
  double val = input_json["val"];
  clock_t begin = clock();
  update_stats(stats, val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(stats, val);
}