#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct pt_regs {unsigned long pc; } ;

/* Variables and functions */
extern "C" { void instruction_pointer_set(struct pt_regs *regs, unsigned long val);
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

void write_output(struct pt_regs* regs, unsigned long int val) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct pt_regs output_temp_4 = regs[i3];
    json output_temp_5;

    output_temp_5["pc"] = output_temp_4.pc;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["regs"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct pt_regs> input_temp_1_vec;
  for (auto& elem : input_json["regs"]) {
    unsigned long int input_temp_1_inner__pc = elem["pc"];
    struct pt_regs input_temp_1_inner = {input_temp_1_inner__pc};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct pt_regs* regs = &input_temp_1_vec[0];
  unsigned long int val = input_json["val"];
  clock_t begin = clock();
  instruction_pointer_set(regs, val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(regs, val);
}