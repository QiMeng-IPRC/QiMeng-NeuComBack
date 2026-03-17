#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  double Float ;

/* Variables and functions */
extern "C" { void FloatAvgAdd(Float x, Float *numer, Float *denom);
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

void write_output(double x, double* numer, double* denom) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    double output_temp_5 = numer[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["numer"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    double output_temp_8 = denom[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["denom"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double x = input_json["x"];
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["numer"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* numer = &input_temp_1_vec[0];
  std::vector<double> input_temp_2_vec;
  for (auto& elem : input_json["denom"]) {
    double input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  double* denom = &input_temp_2_vec[0];
  clock_t begin = clock();
  FloatAvgAdd(x, numer, denom);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, numer, denom);
}