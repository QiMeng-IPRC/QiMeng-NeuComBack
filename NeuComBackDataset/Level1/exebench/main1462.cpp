#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int vStatusReg; scalar_t__* avReg; scalar_t__* pvSreg; scalar_t__* pvDreg; scalar_t__ vZero; scalar_t__ vSign; } ;

/* Variables and functions */
extern  TYPE_1__ GSU ; 
extern "C" { void fx_inc_r2 (void);
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

void write_output() {
  json output_json;
  json output_temp_4;

  output_temp_4["vStatusReg"] = GSU.vStatusReg;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    long int output_temp_7 = GSU.avReg[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_temp_4["avReg"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    long int output_temp_10 = GSU.pvSreg[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_temp_4["pvSreg"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    long int output_temp_13 = GSU.pvDreg[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_temp_4["pvDreg"] = output_temp_11;

  output_temp_4["vZero"] = GSU.vZero;

  output_temp_4["vSign"] = GSU.vSign;
  output_json["GSU"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int GSU__vStatusReg = input_json["GSU"]["vStatusReg"];
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["GSU"]["avReg"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* GSU__avReg = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["GSU"]["pvSreg"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  long int* GSU__pvSreg = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["GSU"]["pvDreg"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  long int* GSU__pvDreg = &input_temp_3_vec[0];
  long int GSU__vZero = input_json["GSU"]["vZero"];
  long int GSU__vSign = input_json["GSU"]["vSign"];
  GSU = {GSU__vStatusReg, GSU__avReg, GSU__pvSreg, GSU__pvDreg, GSU__vZero, GSU__vSign};
  clock_t begin = clock();
  fx_inc_r2();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}