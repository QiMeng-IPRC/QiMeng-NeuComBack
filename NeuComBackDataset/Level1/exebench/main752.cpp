#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  unsigned long* BITMASK_31 ; 
extern  unsigned long* BITMASK_LOWER1 ; 
extern  unsigned long* BITMASK_UPPER1_ ; 
extern "C" { void BARRAY_reset_interval (unsigned long *a, int x1, int x2);
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

void write_output(unsigned long int* a, int x1, int x2) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    unsigned long int output_temp_7 = a[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["a"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    unsigned long int output_temp_10 = BITMASK_31[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["BITMASK_31"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    unsigned long int output_temp_13 = BITMASK_LOWER1[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["BITMASK_LOWER1"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    unsigned long int output_temp_16 = BITMASK_UPPER1_[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["BITMASK_UPPER1_"] = output_temp_14;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<unsigned long int> input_temp_1_vec;
  for (auto& elem : input_json["a"]) {
    unsigned long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned long int* a = &input_temp_1_vec[0];
  int x1 = input_json["x1"];
  int x2 = input_json["x2"];
  std::vector<unsigned long int> input_temp_2_vec;
  for (auto& elem : input_json["BITMASK_31"]) {
    unsigned long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  BITMASK_31 = &input_temp_2_vec[0];
  std::vector<unsigned long int> input_temp_3_vec;
  for (auto& elem : input_json["BITMASK_LOWER1"]) {
    unsigned long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  BITMASK_LOWER1 = &input_temp_3_vec[0];
  std::vector<unsigned long int> input_temp_4_vec;
  for (auto& elem : input_json["BITMASK_UPPER1_"]) {
    unsigned long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  BITMASK_UPPER1_ = &input_temp_4_vec[0];
  clock_t begin = clock();
  BARRAY_reset_interval(a, x1, x2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, x1, x2);
}