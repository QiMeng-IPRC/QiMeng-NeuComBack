#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  upd7810_state ;

/* Variables and functions */
extern  int INTSB ; 
extern  int ITF ; 
extern  int /*<<< orphan*/  PSW ; 
extern  int /*<<< orphan*/  SK ; 
extern "C" { void SKIT_SB(upd7810_state *cpustate);
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

void write_output(int* cpustate) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = cpustate[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["cpustate"] = output_temp_2;

  output_json["INTSB"] = INTSB;

  output_json["ITF"] = ITF;

  output_json["PSW"] = PSW;

  output_json["SK"] = SK;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["cpustate"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* cpustate = &input_temp_1_vec[0];
  INTSB = input_json["INTSB"];
  ITF = input_json["ITF"];
  PSW = input_json["PSW"];
  SK = input_json["SK"];
  clock_t begin = clock();
  SKIT_SB(cpustate);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cpustate);
}