#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct operand {size_t dst; } ;
struct TYPE_2__ {int /*<<< orphan*/ * reg; } ;

/* Variables and functions */
extern  size_t LAST_REG ; 
extern  int /*<<< orphan*/ * memory ; 
extern  TYPE_1__ vcpu ; 
extern "C" { void load_ld(u16 value_to_be_loaded, struct operand operand);
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

void write_output(unsigned long int value_to_be_loaded, struct operand operand) {
  json output_json;

  output_json["LAST_REG"] = LAST_REG;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = memory[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["memory"] = output_temp_3;
  json output_temp_6;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = vcpu.reg[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_temp_6["reg"] = output_temp_7;
  output_json["vcpu"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int value_to_be_loaded = input_json["value_to_be_loaded"];
  unsigned long int operand__dst = input_json["operand"]["dst"];
  struct operand operand = {operand__dst};
  LAST_REG = input_json["LAST_REG"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["memory"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  memory = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["vcpu"]["reg"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* vcpu__reg = &input_temp_2_vec[0];
  vcpu = {vcpu__reg};
  clock_t begin = clock();
  load_ld(value_to_be_loaded, operand);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(value_to_be_loaded, operand);
}