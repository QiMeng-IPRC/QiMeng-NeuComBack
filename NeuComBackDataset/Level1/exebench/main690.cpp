#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  clc_trigger; int /*<<< orphan*/  clc_full; } ;
typedef  TYPE_1__ cl_loglevel_configuration ;
typedef  int /*<<< orphan*/  cl_loglevel ;
typedef  int /*<<< orphan*/  cl_handle ;

/* Variables and functions */
extern "C" { void(cl_get_loglevel_configuration)(cl_handle* cl, cl_loglevel_configuration* clc);
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

void write_output(int* cl, TYPE_1__* clc) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = cl[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["cl"] = output_temp_2;
  TYPE_1__ output_temp_5 = *clc;
  json output_temp_6;

  output_temp_6["clc_trigger"] = output_temp_5.clc_trigger;

  output_temp_6["clc_full"] = output_temp_5.clc_full;
  output_json["clc"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["cl"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* cl = &input_temp_1_vec[0];
  int clc_pointer__clc_trigger = input_json["clc"]["clc_trigger"];
  int clc_pointer__clc_full = input_json["clc"]["clc_full"];
  TYPE_1__ clc_pointer = {clc_pointer__clc_trigger, clc_pointer__clc_full};
  TYPE_1__* clc = &clc_pointer;
  clock_t begin = clock();
  cl_get_loglevel_configuration(cl, clc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cl, clc);
}