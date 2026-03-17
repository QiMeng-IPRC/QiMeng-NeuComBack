#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int* dar; int ir; int x_flag; int c_flag; unsigned int n_flag; unsigned int not_z_flag; scalar_t__ v_flag; } ;

/* Variables and functions */
extern  TYPE_1__ m68ki_cpu ; 
extern "C" { void m68k_op_roxl_32_s(void);
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
  json output_temp_2;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    unsigned int output_temp_5 = m68ki_cpu.dar[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_temp_2["dar"] = output_temp_3;

  output_temp_2["ir"] = m68ki_cpu.ir;

  output_temp_2["x_flag"] = m68ki_cpu.x_flag;

  output_temp_2["c_flag"] = m68ki_cpu.c_flag;

  output_temp_2["n_flag"] = m68ki_cpu.n_flag;

  output_temp_2["not_z_flag"] = m68ki_cpu.not_z_flag;

  output_temp_2["v_flag"] = m68ki_cpu.v_flag;
  output_json["m68ki_cpu"] = output_temp_2;
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
  int m68ki_cpu__x_flag = input_json["m68ki_cpu"]["x_flag"];
  int m68ki_cpu__c_flag = input_json["m68ki_cpu"]["c_flag"];
  unsigned int m68ki_cpu__n_flag = input_json["m68ki_cpu"]["n_flag"];
  unsigned int m68ki_cpu__not_z_flag = input_json["m68ki_cpu"]["not_z_flag"];
  long int m68ki_cpu__v_flag = input_json["m68ki_cpu"]["v_flag"];
  m68ki_cpu = {m68ki_cpu__dar, m68ki_cpu__ir, m68ki_cpu__x_flag, m68ki_cpu__c_flag, m68ki_cpu__n_flag, m68ki_cpu__not_z_flag, m68ki_cpu__v_flag};
  clock_t begin = clock();
  m68k_op_roxl_32_s();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}