#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ integer ;

/* Variables and functions */
extern "C" { int hpsolb(integer *n, double *t, integer *iorder, integer *iheap);
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

void write_output(long int* n, double* t, long int* iorder, long int* iheap, int returnv) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    long int output_temp_7 = n[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["n"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    double output_temp_10 = t[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["t"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    long int output_temp_13 = iorder[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["iorder"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    long int output_temp_16 = iheap[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["iheap"] = output_temp_14;

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
  for (auto& elem : input_json["n"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* n = &input_temp_1_vec[0];
  std::vector<double> input_temp_2_vec;
  for (auto& elem : input_json["t"]) {
    double input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  double* t = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["iorder"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  long int* iorder = &input_temp_3_vec[0];
  std::vector<long int> input_temp_4_vec;
  for (auto& elem : input_json["iheap"]) {
    long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  long int* iheap = &input_temp_4_vec[0];
  clock_t begin = clock();
  int returnv = hpsolb(n, t, iorder, iheap);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(n, t, iorder, iheap, returnv);
}