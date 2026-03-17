#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  long clip_x1 ; 
extern  long clip_x2 ; 
extern  long clip_y1 ; 
extern  long clip_y2 ; 
extern  int csp ; 
extern  long* cstack_x1 ; 
extern  long* cstack_x2 ; 
extern  long* cstack_y1 ; 
extern  long* cstack_y2 ; 
extern "C" { void clip_push(long x1, long y1, long x2, long y2);
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

void write_output(long int x1, long int y1, long int x2, long int y2) {
  json output_json;

  output_json["clip_x1"] = clip_x1;

  output_json["clip_x2"] = clip_x2;

  output_json["clip_y1"] = clip_y1;

  output_json["clip_y2"] = clip_y2;

  output_json["csp"] = csp;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    long int output_temp_7 = cstack_x1[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["cstack_x1"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    long int output_temp_10 = cstack_x2[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["cstack_x2"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    long int output_temp_13 = cstack_y1[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["cstack_y1"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    long int output_temp_16 = cstack_y2[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["cstack_y2"] = output_temp_14;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int x1 = input_json["x1"];
  long int y1 = input_json["y1"];
  long int x2 = input_json["x2"];
  long int y2 = input_json["y2"];
  clip_x1 = input_json["clip_x1"];
  clip_x2 = input_json["clip_x2"];
  clip_y1 = input_json["clip_y1"];
  clip_y2 = input_json["clip_y2"];
  csp = input_json["csp"];
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["cstack_x1"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  cstack_x1 = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["cstack_x2"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  cstack_x2 = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["cstack_y1"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  cstack_y1 = &input_temp_3_vec[0];
  std::vector<long int> input_temp_4_vec;
  for (auto& elem : input_json["cstack_y2"]) {
    long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  cstack_y2 = &input_temp_4_vec[0];
  clock_t begin = clock();
  clip_push(x1, y1, x2, y2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x1, y1, x2, y2);
}