#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int integer ;
typedef  scalar_t__ doublereal ;

/* Variables and functions */
extern "C" { int drotmg_(doublereal *dd1, doublereal *dd2, doublereal * dx1, doublereal *dy1, doublereal *dparam);
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

void write_output(long int* dd1, long int* dd2, long int* dx1, long int* dy1, long int* dparam, int returnv) {
  json output_json;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    long int output_temp_8 = dd1[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["dd1"] = output_temp_6;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    long int output_temp_11 = dd2[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["dd2"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    long int output_temp_14 = dx1[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["dx1"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    long int output_temp_17 = dy1[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["dy1"] = output_temp_15;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    long int output_temp_20 = dparam[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["dparam"] = output_temp_18;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["dd1"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* dd1 = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["dd2"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  long int* dd2 = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["dx1"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  long int* dx1 = &input_temp_3_vec[0];
  std::vector<long int> input_temp_4_vec;
  for (auto& elem : input_json["dy1"]) {
    long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  long int* dy1 = &input_temp_4_vec[0];
  std::vector<long int> input_temp_5_vec;
  for (auto& elem : input_json["dparam"]) {
    long int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  long int* dparam = &input_temp_5_vec[0];
  clock_t begin = clock();
  int returnv = drotmg_(dd1, dd2, dx1, dy1, dparam);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dd1, dd2, dx1, dy1, dparam, returnv);
}