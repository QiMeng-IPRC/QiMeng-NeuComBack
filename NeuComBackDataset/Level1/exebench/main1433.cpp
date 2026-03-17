#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned short pc; } ;
struct cpu {TYPE_1__ regs; } ;

/* Variables and functions */
extern "C" { void cpu_set_pc(struct cpu* cpu, unsigned short pc);
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

void write_output(struct cpu* cpu, unsigned short pc) {
  json output_json;
  struct cpu output_temp_1 = *cpu;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["pc"] = output_temp_1.regs.pc;
  output_temp_2["regs"] = output_temp_3;
  output_json["cpu"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned short cpu_pointer__regs__pc = input_json["cpu"]["regs"]["pc"];
  TYPE_1__ cpu_pointer__regs = {cpu_pointer__regs__pc};
  struct cpu cpu_pointer = {cpu_pointer__regs};
  struct cpu* cpu = &cpu_pointer;
  unsigned short pc = input_json["pc"];
  clock_t begin = clock();
  cpu_set_pc(cpu, pc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cpu, pc);
}