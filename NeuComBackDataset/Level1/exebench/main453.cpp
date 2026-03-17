#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double* ST; int TOP; scalar_t__* tag; } ;

/* Variables and functions */
extern  TYPE_1__ cpu_state ; 
extern "C" { double x87_pop();
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

void write_output(double returnv) {
  json output_json;
  json output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    double output_temp_6 = cpu_state.ST[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_temp_3["ST"] = output_temp_4;

  output_temp_3["TOP"] = cpu_state.TOP;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    long int output_temp_9 = cpu_state.tag[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_temp_3["tag"] = output_temp_7;
  output_json["cpu_state"] = output_temp_3;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["cpu_state"]["ST"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* cpu_state__ST = &input_temp_1_vec[0];
  int cpu_state__TOP = input_json["cpu_state"]["TOP"];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["cpu_state"]["tag"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  long int* cpu_state__tag = &input_temp_2_vec[0];
  cpu_state = {cpu_state__ST, cpu_state__TOP, cpu_state__tag};
  clock_t begin = clock();
  double returnv = x87_pop();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(returnv);
}