#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ word ;
struct TYPE_3__ {int /*<<< orphan*/  temp_count; } ;
typedef  TYPE_1__ flow_graph_builder ;

/* Variables and functions */
extern "C" { void graph_builder_dealloc_temps(flow_graph_builder* builder, word count);
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

void write_output(TYPE_1__* builder, long int count) {
  json output_json;
  TYPE_1__ output_temp_1 = *builder;
  json output_temp_2;

  output_temp_2["temp_count"] = output_temp_1.temp_count;
  output_json["builder"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int builder_pointer__temp_count = input_json["builder"]["temp_count"];
  TYPE_1__ builder_pointer = {builder_pointer__temp_count};
  TYPE_1__* builder = &builder_pointer;
  long int count = input_json["count"];
  clock_t begin = clock();
  graph_builder_dealloc_temps(builder, count);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(builder, count);
}