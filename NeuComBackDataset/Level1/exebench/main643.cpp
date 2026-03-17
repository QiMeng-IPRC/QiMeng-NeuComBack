#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ src ;
struct TYPE_2__ {unsigned int* dar; int ir; unsigned int cyc_shift; unsigned int c_flag; unsigned int x_flag; unsigned int n_flag; unsigned int not_z_flag; scalar_t__ v_flag; } ;

/* Variables and functions */
extern  TYPE_1__ m68ki_cpu ; 
extern  unsigned int m68ki_remaining_cycles ; 
extern  unsigned int* m68ki_shift_32_table ; 
extern "C" { void m68k_op_asr_32_r(void);
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
  json output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    unsigned int output_temp_6 = m68ki_cpu.dar[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_temp_3["dar"] = output_temp_4;

  output_temp_3["ir"] = m68ki_cpu.ir;

  output_temp_3["cyc_shift"] = m68ki_cpu.cyc_shift;

  output_temp_3["c_flag"] = m68ki_cpu.c_flag;

  output_temp_3["x_flag"] = m68ki_cpu.x_flag;

  output_temp_3["n_flag"] = m68ki_cpu.n_flag;

  output_temp_3["not_z_flag"] = m68ki_cpu.not_z_flag;

  output_temp_3["v_flag"] = m68ki_cpu.v_flag;
  output_json["m68ki_cpu"] = output_temp_3;

  output_json["m68ki_remaining_cycles"] = m68ki_remaining_cycles;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    unsigned int output_temp_9 = m68ki_shift_32_table[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["m68ki_shift_32_table"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<unsigned int> input_temp_1_vec;
  for (auto& elem : input_json["m68ki_cpu"]["dar"]) {
    unsigned int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned int* m68ki_cpu__dar = &input_temp_1_vec[0];
  int m68ki_cpu__ir = input_json["m68ki_cpu"]["ir"];
  unsigned int m68ki_cpu__cyc_shift = input_json["m68ki_cpu"]["cyc_shift"];
  unsigned int m68ki_cpu__c_flag = input_json["m68ki_cpu"]["c_flag"];
  unsigned int m68ki_cpu__x_flag = input_json["m68ki_cpu"]["x_flag"];
  unsigned int m68ki_cpu__n_flag = input_json["m68ki_cpu"]["n_flag"];
  unsigned int m68ki_cpu__not_z_flag = input_json["m68ki_cpu"]["not_z_flag"];
  long int m68ki_cpu__v_flag = input_json["m68ki_cpu"]["v_flag"];
  m68ki_cpu = {m68ki_cpu__dar, m68ki_cpu__ir, m68ki_cpu__cyc_shift, m68ki_cpu__c_flag, m68ki_cpu__x_flag, m68ki_cpu__n_flag, m68ki_cpu__not_z_flag, m68ki_cpu__v_flag};
  m68ki_remaining_cycles = input_json["m68ki_remaining_cycles"];
  std::vector<unsigned int> input_temp_2_vec;
  for (auto& elem : input_json["m68ki_shift_32_table"]) {
    unsigned int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  m68ki_shift_32_table = &input_temp_2_vec[0];
  clock_t begin = clock();
  m68k_op_asr_32_r();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}