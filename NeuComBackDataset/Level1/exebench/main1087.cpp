#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float a; } ;
struct TYPE_5__ {TYPE_1__ acc; } ;
typedef  TYPE_2__ MotionState ;

/* Variables and functions */
extern "C" { void set_acceleration_a(MotionState *state, float a);
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

void write_output(TYPE_2__* state, float a) {
  json output_json;
  TYPE_2__ output_temp_1 = *state;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["a"] = output_temp_1.acc.a;
  output_temp_2["acc"] = output_temp_3;
  output_json["state"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float state_pointer__acc__a = input_json["state"]["acc"]["a"];
  TYPE_1__ state_pointer__acc = {state_pointer__acc__a};
  TYPE_2__ state_pointer = {state_pointer__acc};
  TYPE_2__* state = &state_pointer;
  float a = input_json["a"];
  clock_t begin = clock();
  set_acceleration_a(state, a);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(state, a);
}