#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  x ; 
extern "C" { void f_eq_mm5 (float *a1, float *a2);
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

void write_output(float* a1, float* a2) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    float output_temp_5 = a1[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["a1"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    float output_temp_8 = a2[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["a2"] = output_temp_6;

  output_json["x"] = x;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<float> input_temp_1_vec;
  for (auto& elem : input_json["a1"]) {
    float input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  float* a1 = &input_temp_1_vec[0];
  std::vector<float> input_temp_2_vec;
  for (auto& elem : input_json["a2"]) {
    float input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  float* a2 = &input_temp_2_vec[0];
  x = input_json["x"];
  clock_t begin = clock();
  f_eq_mm5(a1, a2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a1, a2);
}