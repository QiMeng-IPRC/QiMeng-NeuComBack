#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int evm; int evc; int eve; int /*<<< orphan*/  evsr; int /*<<< orphan*/  evs; } ;
typedef  TYPE_1__ OPL_SLOT ;

/* Variables and functions */
extern "C" { void OPL_KEYOFF(OPL_SLOT *SLOT);
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

void write_output(TYPE_1__* SLOT) {
  json output_json;
  TYPE_1__ output_temp_1 = *SLOT;
  json output_temp_2;

  output_temp_2["evm"] = output_temp_1.evm;

  output_temp_2["evc"] = output_temp_1.evc;

  output_temp_2["eve"] = output_temp_1.eve;

  output_temp_2["evsr"] = output_temp_1.evsr;

  output_temp_2["evs"] = output_temp_1.evs;
  output_json["SLOT"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int SLOT_pointer__evm = input_json["SLOT"]["evm"];
  int SLOT_pointer__evc = input_json["SLOT"]["evc"];
  int SLOT_pointer__eve = input_json["SLOT"]["eve"];
  int SLOT_pointer__evsr = input_json["SLOT"]["evsr"];
  int SLOT_pointer__evs = input_json["SLOT"]["evs"];
  TYPE_1__ SLOT_pointer = {SLOT_pointer__evm, SLOT_pointer__evc, SLOT_pointer__eve, SLOT_pointer__evsr, SLOT_pointer__evs};
  TYPE_1__* SLOT = &SLOT_pointer;
  clock_t begin = clock();
  OPL_KEYOFF(SLOT);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(SLOT);
}