#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ value_t ;
typedef  int /*<<< orphan*/  uservalue_t ;
typedef  int /*<<< orphan*/  mem64_t ;
typedef  int match_flags ;

/* Variables and functions */
extern  int flag_s8b ; 
extern  int flag_u8b ; 
extern "C" { extern unsigned int scan_routine_INTEGER8_UPDATE (const mem64_t *memory_ptr, size_t memlength, const value_t *old_value, const uservalue_t *user_value, match_flags *saveflags);
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

void write_output(int* memory_ptr, unsigned long int memlength, TYPE_1__* old_value, int* user_value, int* saveflags, unsigned int returnv) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = memory_ptr[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["memory_ptr"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    TYPE_1__ output_temp_10 = old_value[i9];
    json output_temp_11;

    output_temp_11["flags"] = output_temp_10.flags;
    output_temp_8.push_back(output_temp_11);
  }
  output_json["old_value"] = output_temp_8;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = user_value[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["user_value"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    int output_temp_17 = saveflags[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["saveflags"] = output_temp_15;

  output_json["flag_s8b"] = flag_s8b;

  output_json["flag_u8b"] = flag_u8b;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["memory_ptr"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* memory_ptr = &input_temp_1_vec[0];
  unsigned long int memlength = input_json["memlength"];
  std::vector<TYPE_1__> input_temp_2_vec;
  for (auto& elem : input_json["old_value"]) {
    int input_temp_2_inner__flags = elem["flags"];
    TYPE_1__ input_temp_2_inner = {input_temp_2_inner__flags};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  TYPE_1__* old_value = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["user_value"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* user_value = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["saveflags"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* saveflags = &input_temp_4_vec[0];
  flag_s8b = input_json["flag_s8b"];
  flag_u8b = input_json["flag_u8b"];
  clock_t begin = clock();
  unsigned int returnv = scan_routine_INTEGER8_UPDATE(memory_ptr, memlength, old_value, user_value, saveflags);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(memory_ptr, memlength, old_value, user_value, saveflags, returnv);
}