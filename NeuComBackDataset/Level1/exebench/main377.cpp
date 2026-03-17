#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int l; int t; } ;

/* Variables and functions */
extern  int stacktop ; 
extern  int storetop ; 
extern  int* tset_card ; 
extern  int* tset_stack ; 
extern  TYPE_1__* tset_store ; 
extern "C" { void tset_singleton(int l,int t);
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

void write_output(int l, int t) {
  json output_json;

  output_json["stacktop"] = stacktop;

  output_json["storetop"] = storetop;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = tset_card[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["tset_card"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = tset_stack[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["tset_stack"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    TYPE_1__ output_temp_12 = tset_store[i11];
    json output_temp_13;

    output_temp_13["l"] = output_temp_12.l;

    output_temp_13["t"] = output_temp_12.t;
    output_temp_10.push_back(output_temp_13);
  }
  output_json["tset_store"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int l = input_json["l"];
  int t = input_json["t"];
  stacktop = input_json["stacktop"];
  storetop = input_json["storetop"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["tset_card"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  tset_card = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["tset_stack"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  tset_stack = &input_temp_2_vec[0];
  std::vector<TYPE_1__> input_temp_3_vec;
  for (auto& elem : input_json["tset_store"]) {
    int input_temp_3_inner__l = elem["l"];
    int input_temp_3_inner__t = elem["t"];
    TYPE_1__ input_temp_3_inner = {input_temp_3_inner__l, input_temp_3_inner__t};
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  tset_store = &input_temp_3_vec[0];
  clock_t begin = clock();
  tset_singleton(l, t);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(l, t);
}