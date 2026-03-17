#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sasl_mutex_unlock_t ;
typedef  int /*<<< orphan*/  sasl_mutex_lock_t ;
typedef  int /*<<< orphan*/  sasl_mutex_free_t ;
typedef  int /*<<< orphan*/  sasl_mutex_alloc_t ;
struct TYPE_2__ {int /*<<< orphan*/ * free; int /*<<< orphan*/ * unlock; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * alloc; } ;

/* Variables and functions */
extern  TYPE_1__ _sasl_mutex_utils ; 
extern "C" { void sasl_set_mutex(sasl_mutex_alloc_t *n, sasl_mutex_lock_t *l, sasl_mutex_unlock_t *u, sasl_mutex_free_t *d);
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

void write_output(int* n, int* l, int* u, int* d) {
  json output_json;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    int output_temp_11 = n[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["n"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = l[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["l"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    int output_temp_17 = u[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["u"] = output_temp_15;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    int output_temp_20 = d[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["d"] = output_temp_18;
  json output_temp_21;
  std::vector<json> output_temp_22;
  for (unsigned int i23 = 0; i23 < 32; i23++) {
    int output_temp_24 = _sasl_mutex_utils.free[i23];

    output_temp_22.push_back(output_temp_24);
  }
  output_temp_21["free"] = output_temp_22;
  std::vector<json> output_temp_25;
  for (unsigned int i26 = 0; i26 < 32; i26++) {
    int output_temp_27 = _sasl_mutex_utils.unlock[i26];

    output_temp_25.push_back(output_temp_27);
  }
  output_temp_21["unlock"] = output_temp_25;
  std::vector<json> output_temp_28;
  for (unsigned int i29 = 0; i29 < 32; i29++) {
    int output_temp_30 = _sasl_mutex_utils.lock[i29];

    output_temp_28.push_back(output_temp_30);
  }
  output_temp_21["lock"] = output_temp_28;
  std::vector<json> output_temp_31;
  for (unsigned int i32 = 0; i32 < 32; i32++) {
    int output_temp_33 = _sasl_mutex_utils.alloc[i32];

    output_temp_31.push_back(output_temp_33);
  }
  output_temp_21["alloc"] = output_temp_31;
  output_json["_sasl_mutex_utils"] = output_temp_21;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["n"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* n = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["l"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* l = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["u"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* u = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["d"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* d = &input_temp_4_vec[0];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["_sasl_mutex_utils"]["free"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  int* _sasl_mutex_utils__free = &input_temp_5_vec[0];
  std::vector<int> input_temp_6_vec;
  for (auto& elem : input_json["_sasl_mutex_utils"]["unlock"]) {
    int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  int* _sasl_mutex_utils__unlock = &input_temp_6_vec[0];
  std::vector<int> input_temp_7_vec;
  for (auto& elem : input_json["_sasl_mutex_utils"]["lock"]) {
    int input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  int* _sasl_mutex_utils__lock = &input_temp_7_vec[0];
  std::vector<int> input_temp_8_vec;
  for (auto& elem : input_json["_sasl_mutex_utils"]["alloc"]) {
    int input_temp_8_inner = elem;
    input_temp_8_vec.push_back(input_temp_8_inner);
  }
  int* _sasl_mutex_utils__alloc = &input_temp_8_vec[0];
  _sasl_mutex_utils = {_sasl_mutex_utils__free, _sasl_mutex_utils__unlock, _sasl_mutex_utils__lock, _sasl_mutex_utils__alloc};
  clock_t begin = clock();
  sasl_set_mutex(n, l, u, d);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(n, l, u, d);
}