#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double SnowThreshold; double I0; } ;
typedef  TYPE_1__ p4 ;

/* Variables and functions */
extern "C" { void interceptionfun(double *rain, double *intercepted, double Temp, p4 SnowRain_par, double fAPAR);
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

void write_output(double* rain, double* intercepted, double Temp, TYPE_1__ SnowRain_par, double fAPAR) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    double output_temp_5 = rain[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["rain"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    double output_temp_8 = intercepted[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["intercepted"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["rain"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* rain = &input_temp_1_vec[0];
  std::vector<double> input_temp_2_vec;
  for (auto& elem : input_json["intercepted"]) {
    double input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  double* intercepted = &input_temp_2_vec[0];
  double Temp = input_json["Temp"];
  double SnowRain_par__SnowThreshold = input_json["SnowRain_par"]["SnowThreshold"];
  double SnowRain_par__I0 = input_json["SnowRain_par"]["I0"];
  TYPE_1__ SnowRain_par = {SnowRain_par__SnowThreshold, SnowRain_par__I0};
  double fAPAR = input_json["fAPAR"];
  clock_t begin = clock();
  interceptionfun(rain, intercepted, Temp, SnowRain_par, fAPAR);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rain, intercepted, Temp, SnowRain_par, fAPAR);
}