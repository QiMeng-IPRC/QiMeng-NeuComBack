#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8 ;
typedef  size_t uint32 ;
typedef  scalar_t__ uint16 ;
typedef  scalar_t__ int8 ;
typedef  scalar_t__ int32 ;
struct TYPE_2__ {scalar_t__* avReg; scalar_t__ vZero; scalar_t__* pvPrgBank; scalar_t__ vPipe; } ;

/* Variables and functions */
extern  TYPE_1__ GSU ; 
extern "C" { void fx_beq (void);
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
  json output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    long int output_temp_6 = GSU.avReg[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_temp_3["avReg"] = output_temp_4;

  output_temp_3["vZero"] = GSU.vZero;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    long int output_temp_9 = GSU.pvPrgBank[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_temp_3["pvPrgBank"] = output_temp_7;

  output_temp_3["vPipe"] = GSU.vPipe;
  output_json["GSU"] = output_temp_3;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["GSU"]["avReg"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* GSU__avReg = &input_temp_1_vec[0];
  long int GSU__vZero = input_json["GSU"]["vZero"];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["GSU"]["pvPrgBank"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  long int* GSU__pvPrgBank = &input_temp_2_vec[0];
  long int GSU__vPipe = input_json["GSU"]["vPipe"];
  GSU = {GSU__avReg, GSU__vZero, GSU__pvPrgBank, GSU__vPipe};
  clock_t begin = clock();
  fx_beq();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}