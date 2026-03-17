#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int u16 ;

/* Variables and functions */
extern  int* channel_data ; 
extern  int* filter_buffer ; 
extern  int ges_count ; 
extern  int* ges_raws ; 
extern  int opt ; 
extern  int* paras ; 
extern  int start_idx ; 
extern "C" { void add_gesture_data(u16* data, int ir_on);
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

void write_output(int* data, int ir_on) {
  json output_json;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = data[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["data"] = output_temp_6;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    int output_temp_11 = channel_data[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["channel_data"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = filter_buffer[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["filter_buffer"] = output_temp_12;

  output_json["ges_count"] = ges_count;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    int output_temp_17 = ges_raws[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["ges_raws"] = output_temp_15;

  output_json["opt"] = opt;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    int output_temp_20 = paras[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["paras"] = output_temp_18;

  output_json["start_idx"] = start_idx;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["data"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* data = &input_temp_1_vec[0];
  int ir_on = input_json["ir_on"];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["channel_data"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  channel_data = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["filter_buffer"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  filter_buffer = &input_temp_3_vec[0];
  ges_count = input_json["ges_count"];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["ges_raws"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  ges_raws = &input_temp_4_vec[0];
  opt = input_json["opt"];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["paras"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  paras = &input_temp_5_vec[0];
  start_idx = input_json["start_idx"];
  clock_t begin = clock();
  add_gesture_data(data, ir_on);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(data, ir_on);
}