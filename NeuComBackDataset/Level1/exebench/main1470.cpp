#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  double t1 ; 
extern  double t2 ; 
extern  double t3 ; 
extern  double t4 ; 
extern "C" { void t(double *a, double *b);
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

void write_output(double* a, double* b) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    double output_temp_5 = a[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["a"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    double output_temp_8 = b[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["b"] = output_temp_6;

  output_json["t1"] = t1;

  output_json["t2"] = t2;

  output_json["t3"] = t3;

  output_json["t4"] = t4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["a"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* a = &input_temp_1_vec[0];
  std::vector<double> input_temp_2_vec;
  for (auto& elem : input_json["b"]) {
    double input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  double* b = &input_temp_2_vec[0];
  t1 = input_json["t1"];
  t2 = input_json["t2"];
  t3 = input_json["t3"];
  t4 = input_json["t4"];
  clock_t begin = clock();
  t(a, b);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b);
}