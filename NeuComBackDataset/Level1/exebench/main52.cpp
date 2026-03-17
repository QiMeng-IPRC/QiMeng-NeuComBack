#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct pt_regs {int dummy; } ;

/* Variables and functions */
extern  int gdb_bfin_errcode ; 
extern  int gdb_bfin_vector ; 
extern "C" { void kgdb_post_primary_code(struct pt_regs *regs, int eVector, int err_code);
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

void write_output(struct pt_regs* regs, int eVector, int err_code) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct pt_regs output_temp_4 = regs[i3];
    json output_temp_5;

    output_temp_5["dummy"] = output_temp_4.dummy;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["regs"] = output_temp_2;

  output_json["gdb_bfin_errcode"] = gdb_bfin_errcode;

  output_json["gdb_bfin_vector"] = gdb_bfin_vector;
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
    int input_temp_1_inner__dummy = elem["dummy"];
    struct pt_regs input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct pt_regs* regs = &input_temp_1_vec[0];
  int eVector = input_json["eVector"];
  int err_code = input_json["err_code"];
  gdb_bfin_errcode = input_json["gdb_bfin_errcode"];
  gdb_bfin_vector = input_json["gdb_bfin_vector"];
  clock_t begin = clock();
  kgdb_post_primary_code(regs, eVector, err_code);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(regs, eVector, err_code);
}