#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  PLC_ANSWER_ERROR_OFR_SP ; 
extern  int /*<<< orphan*/ * plcvm_ram ; 
extern  size_t plcvm_sfp ; 
extern  size_t plcvm_sp ; 
extern  int /*<<< orphan*/  plcvm_stat ; 
extern "C" { void cb_not(void);
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

  output_json["PLC_ANSWER_ERROR_OFR_SP"] = PLC_ANSWER_ERROR_OFR_SP;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = plcvm_ram[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["plcvm_ram"] = output_temp_2;

  output_json["plcvm_sfp"] = plcvm_sfp;

  output_json["plcvm_sp"] = plcvm_sp;

  output_json["plcvm_stat"] = plcvm_stat;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  PLC_ANSWER_ERROR_OFR_SP = input_json["PLC_ANSWER_ERROR_OFR_SP"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["plcvm_ram"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  plcvm_ram = &input_temp_1_vec[0];
  plcvm_sfp = input_json["plcvm_sfp"];
  plcvm_sp = input_json["plcvm_sp"];
  plcvm_stat = input_json["plcvm_stat"];
  clock_t begin = clock();
  cb_not();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}