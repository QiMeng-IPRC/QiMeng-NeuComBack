#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
typedef  scalar_t__ uint16 ;
typedef  scalar_t__ int8 ;
typedef  int int32 ;
struct TYPE_2__ {size_t* pvSreg; size_t* avReg; size_t* pvDreg; size_t vSign; size_t vZero; int vStatusReg; int /*<<< orphan*/ * pvRomBank; int /*<<< orphan*/  vRomBuffer; } ;

/* Variables and functions */
extern  TYPE_1__ GSU ; 
extern "C" { void fx_mult_i4 (void);
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
  json output_temp_5;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    unsigned long int output_temp_8 = GSU.pvSreg[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_temp_5["pvSreg"] = output_temp_6;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    unsigned long int output_temp_11 = GSU.avReg[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_temp_5["avReg"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    unsigned long int output_temp_14 = GSU.pvDreg[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_temp_5["pvDreg"] = output_temp_12;

  output_temp_5["vSign"] = GSU.vSign;

  output_temp_5["vZero"] = GSU.vZero;

  output_temp_5["vStatusReg"] = GSU.vStatusReg;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    int output_temp_17 = GSU.pvRomBank[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_temp_5["pvRomBank"] = output_temp_15;

  output_temp_5["vRomBuffer"] = GSU.vRomBuffer;
  output_json["GSU"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<unsigned long int> input_temp_1_vec;
  for (auto& elem : input_json["GSU"]["pvSreg"]) {
    unsigned long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned long int* GSU__pvSreg = &input_temp_1_vec[0];
  std::vector<unsigned long int> input_temp_2_vec;
  for (auto& elem : input_json["GSU"]["avReg"]) {
    unsigned long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  unsigned long int* GSU__avReg = &input_temp_2_vec[0];
  std::vector<unsigned long int> input_temp_3_vec;
  for (auto& elem : input_json["GSU"]["pvDreg"]) {
    unsigned long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  unsigned long int* GSU__pvDreg = &input_temp_3_vec[0];
  unsigned long int GSU__vSign = input_json["GSU"]["vSign"];
  unsigned long int GSU__vZero = input_json["GSU"]["vZero"];
  int GSU__vStatusReg = input_json["GSU"]["vStatusReg"];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["GSU"]["pvRomBank"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* GSU__pvRomBank = &input_temp_4_vec[0];
  int GSU__vRomBuffer = input_json["GSU"]["vRomBuffer"];
  GSU = {GSU__pvSreg, GSU__avReg, GSU__pvDreg, GSU__vSign, GSU__vZero, GSU__vStatusReg, GSU__pvRomBank, GSU__vRomBuffer};
  clock_t begin = clock();
  fx_mult_i4();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}