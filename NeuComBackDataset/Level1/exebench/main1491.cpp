#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct CPU {int pc; int npc; int branch_pc; } ;

/* Variables and functions */
extern "C" { void cpu_advance_pc(struct CPU *cpu);
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

void write_output(struct CPU* cpu) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct CPU output_temp_4 = cpu[i3];
    json output_temp_5;

    output_temp_5["pc"] = output_temp_4.pc;

    output_temp_5["npc"] = output_temp_4.npc;

    output_temp_5["branch_pc"] = output_temp_4.branch_pc;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["cpu"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct CPU> input_temp_1_vec;
  for (auto& elem : input_json["cpu"]) {
    int input_temp_1_inner__pc = elem["pc"];
    int input_temp_1_inner__npc = elem["npc"];
    int input_temp_1_inner__branch_pc = elem["branch_pc"];
    struct CPU input_temp_1_inner = {input_temp_1_inner__pc, input_temp_1_inner__npc, input_temp_1_inner__branch_pc};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct CPU* cpu = &input_temp_1_vec[0];
  clock_t begin = clock();
  cpu_advance_pc(cpu);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cpu);
}