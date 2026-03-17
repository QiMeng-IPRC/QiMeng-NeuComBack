#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int der; int pos; } ;
typedef  TYPE_1__ bullet ;
struct TYPE_6__ {char c; } ;
typedef  TYPE_2__ block ;

/* Variables and functions */
extern "C" { void generate_shots(block * area, int * cnt_shots, bullet * shots, int act, int handicap, int der);
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

void write_output(TYPE_2__* area, int* cnt_shots, TYPE_1__* shots, int act, int handicap, int der) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_2__ output_temp_6 = area[i5];
    json output_temp_7;

    output_temp_7["c"] = output_temp_6.c;
    output_temp_4.push_back(output_temp_7);
  }
  output_json["area"] = output_temp_4;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = cnt_shots[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["cnt_shots"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    TYPE_1__ output_temp_13 = shots[i12];
    json output_temp_14;

    output_temp_14["der"] = output_temp_13.der;

    output_temp_14["pos"] = output_temp_13.pos;
    output_temp_11.push_back(output_temp_14);
  }
  output_json["shots"] = output_temp_11;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_2__> input_temp_1_vec;
  for (auto& elem : input_json["area"]) {
    char input_temp_1_inner__c = elem["c"].get<char>();
    TYPE_2__ input_temp_1_inner = {input_temp_1_inner__c};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_2__* area = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["cnt_shots"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* cnt_shots = &input_temp_2_vec[0];
  std::vector<TYPE_1__> input_temp_3_vec;
  for (auto& elem : input_json["shots"]) {
    int input_temp_3_inner__der = elem["der"];
    int input_temp_3_inner__pos = elem["pos"];
    TYPE_1__ input_temp_3_inner = {input_temp_3_inner__der, input_temp_3_inner__pos};
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  TYPE_1__* shots = &input_temp_3_vec[0];
  int act = input_json["act"];
  int handicap = input_json["handicap"];
  int der = input_json["der"];
  clock_t begin = clock();
  generate_shots(area, cnt_shots, shots, act, handicap, der);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(area, cnt_shots, shots, act, handicap, der);
}