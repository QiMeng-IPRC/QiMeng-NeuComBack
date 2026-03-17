#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ unspos ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  TYPE_1__ seq ;

/* Variables and functions */
extern "C" { void expand_segment (seq* seq1, unspos* pos1, seq* seq2, unspos* pos2, unspos* length, u32 expandLeft, u32 expandRight);
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

void write_output(TYPE_1__* seq1, long int* pos1, TYPE_1__* seq2, long int* pos2, long int* length, long int expandLeft, long int expandRight) {
  json output_json;
  TYPE_1__ output_temp_4 = *seq1;
  json output_temp_5;

  output_temp_5["len"] = output_temp_4.len;
  output_json["seq1"] = output_temp_5;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    long int output_temp_8 = pos1[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["pos1"] = output_temp_6;
  TYPE_1__ output_temp_9 = *seq2;
  json output_temp_10;

  output_temp_10["len"] = output_temp_9.len;
  output_json["seq2"] = output_temp_10;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    long int output_temp_13 = pos2[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["pos2"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    long int output_temp_16 = length[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["length"] = output_temp_14;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int seq1_pointer__len = input_json["seq1"]["len"];
  TYPE_1__ seq1_pointer = {seq1_pointer__len};
  TYPE_1__* seq1 = &seq1_pointer;
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["pos1"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* pos1 = &input_temp_1_vec[0];
  long int seq2_pointer__len = input_json["seq2"]["len"];
  TYPE_1__ seq2_pointer = {seq2_pointer__len};
  TYPE_1__* seq2 = &seq2_pointer;
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["pos2"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  long int* pos2 = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["length"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  long int* length = &input_temp_3_vec[0];
  long int expandLeft = input_json["expandLeft"];
  long int expandRight = input_json["expandRight"];
  clock_t begin = clock();
  expand_segment(seq1, pos1, seq2, pos2, length, expandLeft, expandRight);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(seq1, pos1, seq2, pos2, length, expandLeft, expandRight);
}