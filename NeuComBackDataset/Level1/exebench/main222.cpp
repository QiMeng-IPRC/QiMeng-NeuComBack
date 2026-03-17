#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct perf_guest_info_callbacks {int dummy; } ;

/* Variables and functions */
extern  struct perf_guest_info_callbacks* perf_guest_cbs ; 
extern "C" { int perf_register_guest_info_callbacks(struct perf_guest_info_callbacks *cbs);
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

void write_output(struct perf_guest_info_callbacks* cbs, int returnv) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct perf_guest_info_callbacks output_temp_5 = cbs[i4];
    json output_temp_6;

    output_temp_6["dummy"] = output_temp_5.dummy;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["cbs"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    struct perf_guest_info_callbacks output_temp_9 = perf_guest_cbs[i8];
    json output_temp_10;

    output_temp_10["dummy"] = output_temp_9.dummy;
    output_temp_7.push_back(output_temp_10);
  }
  output_json["perf_guest_cbs"] = output_temp_7;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct perf_guest_info_callbacks> input_temp_1_vec;
  for (auto& elem : input_json["cbs"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct perf_guest_info_callbacks input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct perf_guest_info_callbacks* cbs = &input_temp_1_vec[0];
  std::vector<struct perf_guest_info_callbacks> input_temp_2_vec;
  for (auto& elem : input_json["perf_guest_cbs"]) {
    int input_temp_2_inner__dummy = elem["dummy"];
    struct perf_guest_info_callbacks input_temp_2_inner = {input_temp_2_inner__dummy};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  perf_guest_cbs = &input_temp_2_vec[0];
  clock_t begin = clock();
  int returnv = perf_register_guest_info_callbacks(cbs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cbs, returnv);
}