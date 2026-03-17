#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ptrdiff_t ;
typedef  scalar_t__ DCpointer ;
typedef  scalar_t__ DClonglong ;
typedef  scalar_t__ DCint ;
typedef  scalar_t__ DCfloat ;
typedef  scalar_t__ DCdouble ;
typedef  scalar_t__ DCbool ;

/* Variables and functions */
extern  scalar_t__* valueBool ; 
extern  scalar_t__* valueDouble ; 
extern  scalar_t__* valueFloat ; 
extern  scalar_t__* valueInt ; 
extern  scalar_t__* valueLongLong ; 
extern  scalar_t__* valuePointer ; 
extern "C" { void init();
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
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    long int output_temp_9 = valueBool[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["valueBool"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    long int output_temp_12 = valueDouble[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["valueDouble"] = output_temp_10;
  std::vector<json> output_temp_13;
  for (unsigned int i14 = 0; i14 < 32; i14++) {
    long int output_temp_15 = valueFloat[i14];

    output_temp_13.push_back(output_temp_15);
  }
  output_json["valueFloat"] = output_temp_13;
  std::vector<json> output_temp_16;
  for (unsigned int i17 = 0; i17 < 32; i17++) {
    long int output_temp_18 = valueInt[i17];

    output_temp_16.push_back(output_temp_18);
  }
  output_json["valueInt"] = output_temp_16;
  std::vector<json> output_temp_19;
  for (unsigned int i20 = 0; i20 < 32; i20++) {
    long int output_temp_21 = valueLongLong[i20];

    output_temp_19.push_back(output_temp_21);
  }
  output_json["valueLongLong"] = output_temp_19;
  std::vector<json> output_temp_22;
  for (unsigned int i23 = 0; i23 < 32; i23++) {
    long int output_temp_24 = valuePointer[i23];

    output_temp_22.push_back(output_temp_24);
  }
  output_json["valuePointer"] = output_temp_22;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["valueBool"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  valueBool = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["valueDouble"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  valueDouble = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["valueFloat"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  valueFloat = &input_temp_3_vec[0];
  std::vector<long int> input_temp_4_vec;
  for (auto& elem : input_json["valueInt"]) {
    long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  valueInt = &input_temp_4_vec[0];
  std::vector<long int> input_temp_5_vec;
  for (auto& elem : input_json["valueLongLong"]) {
    long int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  valueLongLong = &input_temp_5_vec[0];
  std::vector<long int> input_temp_6_vec;
  for (auto& elem : input_json["valuePointer"]) {
    long int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  valuePointer = &input_temp_6_vec[0];
  clock_t begin = clock();
  init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}