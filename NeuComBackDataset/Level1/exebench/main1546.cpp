#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
typedef  TYPE_1__ in_addr ;
struct TYPE_7__ {int /*<<< orphan*/ * s6_addr32; } ;
typedef  TYPE_2__ in6_addr ;

/* Variables and functions */
extern  TYPE_2__ in6addr_v4mapped_init ; 
extern "C" { void IN6_SET_ADDR_V4MAPPED(in6_addr* a6, const in_addr* a4);
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

void write_output(TYPE_2__* a6, TYPE_1__* a4) {
  json output_json;
  TYPE_2__ output_temp_3 = *a6;
  json output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = output_temp_3.s6_addr32[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_temp_4["s6_addr32"] = output_temp_5;
  output_json["a6"] = output_temp_4;
  TYPE_1__ output_temp_8 = *a4;
  json output_temp_9;

  output_temp_9["s_addr"] = output_temp_8.s_addr;
  output_json["a4"] = output_temp_9;
  json output_temp_10;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    int output_temp_13 = in6addr_v4mapped_init.s6_addr32[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_temp_10["s6_addr32"] = output_temp_11;
  output_json["in6addr_v4mapped_init"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["a6"]["s6_addr32"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* a6_pointer__s6_addr32 = &input_temp_1_vec[0];
  TYPE_2__ a6_pointer = {a6_pointer__s6_addr32};
  TYPE_2__* a6 = &a6_pointer;
  int a4_pointer__s_addr = input_json["a4"]["s_addr"];
  TYPE_1__ a4_pointer = {a4_pointer__s_addr};
  TYPE_1__* a4 = &a4_pointer;
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["in6addr_v4mapped_init"]["s6_addr32"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* in6addr_v4mapped_init__s6_addr32 = &input_temp_2_vec[0];
  in6addr_v4mapped_init = {in6addr_v4mapped_init__s6_addr32};
  clock_t begin = clock();
  IN6_SET_ADDR_V4MAPPED(a6, a4);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a6, a4);
}