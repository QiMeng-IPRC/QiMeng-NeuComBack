#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int gsmword ;

/* Variables and functions */
extern "C" { void Coefficients_27_39(gsmword * LARpp_j_1, gsmword * LARpp_j, gsmword * LARp);
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

void write_output(int* LARpp_j_1, int* LARpp_j, int* LARp) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = LARpp_j_1[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["LARpp_j_1"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = LARpp_j[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["LARpp_j"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = LARp[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["LARp"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["LARpp_j_1"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* LARpp_j_1 = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["LARpp_j"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* LARpp_j = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["LARp"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* LARp = &input_temp_3_vec[0];
  clock_t begin = clock();
  Coefficients_27_39(LARpp_j_1, LARpp_j, LARp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(LARpp_j_1, LARpp_j, LARp);
}