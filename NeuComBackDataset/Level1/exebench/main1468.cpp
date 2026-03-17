#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ rl_end ; 
extern  scalar_t__* rl_line_buffer ; 
extern  scalar_t__ rl_mark ; 
extern  scalar_t__ rl_point ; 
extern  scalar_t__* the_line ; 
extern "C" { void _rl_init_line_state ();
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

  output_json["rl_end"] = rl_end;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    long int output_temp_5 = rl_line_buffer[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["rl_line_buffer"] = output_temp_3;

  output_json["rl_mark"] = rl_mark;

  output_json["rl_point"] = rl_point;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    long int output_temp_8 = the_line[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["the_line"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  rl_end = input_json["rl_end"];
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["rl_line_buffer"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  rl_line_buffer = &input_temp_1_vec[0];
  rl_mark = input_json["rl_mark"];
  rl_point = input_json["rl_point"];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["the_line"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  the_line = &input_temp_2_vec[0];
  clock_t begin = clock();
  _rl_init_line_state();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}