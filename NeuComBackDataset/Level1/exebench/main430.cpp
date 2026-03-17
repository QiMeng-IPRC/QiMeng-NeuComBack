#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ppc; } ;
typedef  TYPE_1__ dsp56k_core ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
extern  int /*<<< orphan*/  PC ; 
extern "C" { size_t dsp56k_op_jmp(dsp56k_core* cpustate, const UINT16 op, const UINT16 op2, UINT8* cycles);
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

void write_output(TYPE_1__* cpustate, int op, int op2, int* cycles, unsigned long int returnv) {
  json output_json;
  TYPE_1__ output_temp_2 = *cpustate;
  json output_temp_3;

  output_temp_3["ppc"] = output_temp_2.ppc;
  output_json["cpustate"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = cycles[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["cycles"] = output_temp_4;

  output_json["PC"] = PC;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cpustate_pointer__ppc = input_json["cpustate"]["ppc"];
  TYPE_1__ cpustate_pointer = {cpustate_pointer__ppc};
  TYPE_1__* cpustate = &cpustate_pointer;
  int op = input_json["op"];
  int op2 = input_json["op2"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["cycles"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* cycles = &input_temp_1_vec[0];
  PC = input_json["PC"];
  clock_t begin = clock();
  unsigned long int returnv = dsp56k_op_jmp(cpustate, op, op2, cycles);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cpustate, op, op2, cycles, returnv);
}