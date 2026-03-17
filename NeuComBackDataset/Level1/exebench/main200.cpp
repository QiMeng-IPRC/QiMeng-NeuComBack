#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int IRQParam; int /*<<< orphan*/  IRQHandler; } ;
typedef  int /*<<< orphan*/  OPL3_IRQHANDLER ;
typedef  TYPE_1__ OPL3 ;

/* Variables and functions */
extern "C" { void OPL3SetIRQHandler(OPL3 *chip,OPL3_IRQHANDLER IRQHandler,int param);
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

void write_output(TYPE_1__* chip, int IRQHandler, int param) {
  json output_json;
  TYPE_1__ output_temp_1 = *chip;
  json output_temp_2;

  output_temp_2["IRQParam"] = output_temp_1.IRQParam;

  output_temp_2["IRQHandler"] = output_temp_1.IRQHandler;
  output_json["chip"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int chip_pointer__IRQParam = input_json["chip"]["IRQParam"];
  int chip_pointer__IRQHandler = input_json["chip"]["IRQHandler"];
  TYPE_1__ chip_pointer = {chip_pointer__IRQParam, chip_pointer__IRQHandler};
  TYPE_1__* chip = &chip_pointer;
  int IRQHandler = input_json["IRQHandler"];
  int param = input_json["param"];
  clock_t begin = clock();
  OPL3SetIRQHandler(chip, IRQHandler, param);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(chip, IRQHandler, param);
}