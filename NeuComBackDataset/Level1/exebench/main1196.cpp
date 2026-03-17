#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s32Info; int /*<<< orphan*/  pvReceiver; int /*<<< orphan*/  pfHdlr; } ;
typedef  TYPE_1__ NotifyData_t ;

/* Variables and functions */
extern "C" { void notify_assign(NotifyData_t * ptSignal, NotifyData_t * ptSlot);
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

void write_output(TYPE_1__* ptSignal, TYPE_1__* ptSlot) {
  json output_json;
  TYPE_1__ output_temp_1 = *ptSignal;
  json output_temp_2;

  output_temp_2["s32Info"] = output_temp_1.s32Info;

  output_temp_2["pvReceiver"] = output_temp_1.pvReceiver;

  output_temp_2["pfHdlr"] = output_temp_1.pfHdlr;
  output_json["ptSignal"] = output_temp_2;
  TYPE_1__ output_temp_3 = *ptSlot;
  json output_temp_4;

  output_temp_4["s32Info"] = output_temp_3.s32Info;

  output_temp_4["pvReceiver"] = output_temp_3.pvReceiver;

  output_temp_4["pfHdlr"] = output_temp_3.pfHdlr;
  output_json["ptSlot"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ptSignal_pointer__s32Info = input_json["ptSignal"]["s32Info"];
  int ptSignal_pointer__pvReceiver = input_json["ptSignal"]["pvReceiver"];
  int ptSignal_pointer__pfHdlr = input_json["ptSignal"]["pfHdlr"];
  TYPE_1__ ptSignal_pointer = {ptSignal_pointer__s32Info, ptSignal_pointer__pvReceiver, ptSignal_pointer__pfHdlr};
  TYPE_1__* ptSignal = &ptSignal_pointer;
  int ptSlot_pointer__s32Info = input_json["ptSlot"]["s32Info"];
  int ptSlot_pointer__pvReceiver = input_json["ptSlot"]["pvReceiver"];
  int ptSlot_pointer__pfHdlr = input_json["ptSlot"]["pfHdlr"];
  TYPE_1__ ptSlot_pointer = {ptSlot_pointer__s32Info, ptSlot_pointer__pvReceiver, ptSlot_pointer__pfHdlr};
  TYPE_1__* ptSlot = &ptSlot_pointer;
  clock_t begin = clock();
  notify_assign(ptSignal, ptSlot);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ptSignal, ptSlot);
}