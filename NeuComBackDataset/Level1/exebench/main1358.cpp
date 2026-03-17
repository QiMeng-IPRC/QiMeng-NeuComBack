#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int irqmask ;
struct TYPE_2__ {unsigned int VICINTENCLEAR; } ;

/* Variables and functions */
extern  TYPE_1__* regs ; 
extern "C" { void disable_irq(irqmask irq);
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

void write_output(unsigned int irq) {
  json output_json;
  TYPE_1__ output_temp_1 = *regs;
  json output_temp_2;

  output_temp_2["VICINTENCLEAR"] = output_temp_1.VICINTENCLEAR;
  output_json["regs"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int irq = input_json["irq"];
  unsigned int regs_pointer__VICINTENCLEAR = input_json["regs"]["VICINTENCLEAR"];
  TYPE_1__ regs_pointer = {regs_pointer__VICINTENCLEAR};
  regs = &regs_pointer;
  clock_t begin = clock();
  disable_irq(irq);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(irq);
}