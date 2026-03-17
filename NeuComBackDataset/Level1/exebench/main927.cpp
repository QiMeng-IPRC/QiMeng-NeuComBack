#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Value; } ;
struct TYPE_5__ {TYPE_1__ plantProc; int /*<<< orphan*/  Value; } ;
typedef  TYPE_2__ Plant_t ;

/* Variables and functions */
extern "C" { void Plant_syncOutputData(Plant_t *me);
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

void write_output(TYPE_2__* me) {
  json output_json;
  TYPE_2__ output_temp_1 = *me;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["Value"] = output_temp_1.plantProc.Value;
  output_temp_2["plantProc"] = output_temp_3;

  output_temp_2["Value"] = output_temp_1.Value;
  output_json["me"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int me_pointer__plantProc__Value = input_json["me"]["plantProc"]["Value"];
  TYPE_1__ me_pointer__plantProc = {me_pointer__plantProc__Value};
  int me_pointer__Value = input_json["me"]["Value"];
  TYPE_2__ me_pointer = {me_pointer__plantProc, me_pointer__Value};
  TYPE_2__* me = &me_pointer;
  clock_t begin = clock();
  Plant_syncOutputData(me);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(me);
}