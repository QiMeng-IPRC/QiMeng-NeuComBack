#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_2__ {int limit_low; int flags_and_limit_high; int base_low; int base_middle; int base_high; int access; } ;

/* Variables and functions */
extern  TYPE_1__* gdt ; 
extern  size_t gdt_entries ; 
extern "C" { void gdt_set_entry(word index, dword base, dword limit, byte access, byte flags);
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

void write_output(unsigned long int index, int base, int limit, int access, int flags) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = gdt[i3];
    json output_temp_5;

    output_temp_5["limit_low"] = output_temp_4.limit_low;

    output_temp_5["flags_and_limit_high"] = output_temp_4.flags_and_limit_high;

    output_temp_5["base_low"] = output_temp_4.base_low;

    output_temp_5["base_middle"] = output_temp_4.base_middle;

    output_temp_5["base_high"] = output_temp_4.base_high;

    output_temp_5["access"] = output_temp_4.access;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["gdt"] = output_temp_2;

  output_json["gdt_entries"] = gdt_entries;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int index = input_json["index"];
  int base = input_json["base"];
  int limit = input_json["limit"];
  int access = input_json["access"];
  int flags = input_json["flags"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["gdt"]) {
    int input_temp_1_inner__limit_low = elem["limit_low"];
    int input_temp_1_inner__flags_and_limit_high = elem["flags_and_limit_high"];
    int input_temp_1_inner__base_low = elem["base_low"];
    int input_temp_1_inner__base_middle = elem["base_middle"];
    int input_temp_1_inner__base_high = elem["base_high"];
    int input_temp_1_inner__access = elem["access"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__limit_low, input_temp_1_inner__flags_and_limit_high, input_temp_1_inner__base_low, input_temp_1_inner__base_middle, input_temp_1_inner__base_high, input_temp_1_inner__access};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  gdt = &input_temp_1_vec[0];
  gdt_entries = input_json["gdt_entries"];
  clock_t begin = clock();
  gdt_set_entry(index, base, limit, access, flags);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(index, base, limit, access, flags);
}