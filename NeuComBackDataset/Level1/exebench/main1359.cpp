#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ RandN_usePrevious ; 
extern  long ix ; 
extern  long iy ; 
extern  long iz ; 
extern "C" { void GetSeed(long *ix_out, long *iy_out, long *iz_out);
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

void write_output(long int* ix_out, long int* iy_out, long int* iz_out) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    long int output_temp_6 = ix_out[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["ix_out"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    long int output_temp_9 = iy_out[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["iy_out"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    long int output_temp_12 = iz_out[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["iz_out"] = output_temp_10;

  output_json["RandN_usePrevious"] = RandN_usePrevious;

  output_json["ix"] = ix;

  output_json["iy"] = iy;

  output_json["iz"] = iz;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["ix_out"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* ix_out = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["iy_out"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  long int* iy_out = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["iz_out"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  long int* iz_out = &input_temp_3_vec[0];
  RandN_usePrevious = input_json["RandN_usePrevious"];
  ix = input_json["ix"];
  iy = input_json["iy"];
  iz = input_json["iz"];
  clock_t begin = clock();
  GetSeed(ix_out, iy_out, iz_out);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ix_out, iy_out, iz_out);
}