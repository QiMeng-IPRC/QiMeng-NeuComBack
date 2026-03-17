#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int fixed ;

/* Variables and functions */
extern  int* angles ; 
extern  int* kvals ; 
extern "C" { void cordic(fixed phi, fixed *c, fixed *s);
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

void write_output(int phi, int* c, int* s) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = c[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["c"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = s[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["s"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    int output_temp_13 = angles[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["angles"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    int output_temp_16 = kvals[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["kvals"] = output_temp_14;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int phi = input_json["phi"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["c"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* c = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["s"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* s = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["angles"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  angles = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["kvals"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  kvals = &input_temp_4_vec[0];
  clock_t begin = clock();
  cordic(phi, c, s);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(phi, c, s);
}