#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  oldcurrentmove; int /*<<< orphan*/  currentmove; } ;
struct TYPE_5__ {TYPE_1__ cast_info; } ;
typedef  TYPE_2__ edict_t ;

/* Variables and functions */
extern "C" { void thug2_end_standup ( edict_t *self );
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

void write_output(TYPE_2__* self) {
  json output_json;
  TYPE_2__ output_temp_1 = *self;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["oldcurrentmove"] = output_temp_1.cast_info.oldcurrentmove;

  output_temp_3["currentmove"] = output_temp_1.cast_info.currentmove;
  output_temp_2["cast_info"] = output_temp_3;
  output_json["self"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int self_pointer__cast_info__oldcurrentmove = input_json["self"]["cast_info"]["oldcurrentmove"];
  int self_pointer__cast_info__currentmove = input_json["self"]["cast_info"]["currentmove"];
  TYPE_1__ self_pointer__cast_info = {self_pointer__cast_info__oldcurrentmove, self_pointer__cast_info__currentmove};
  TYPE_2__ self_pointer = {self_pointer__cast_info};
  TYPE_2__* self = &self_pointer;
  clock_t begin = clock();
  thug2_end_standup(self);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self);
}