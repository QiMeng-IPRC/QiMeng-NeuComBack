#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int target; scalar_t__ integral; } ;
typedef  TYPE_1__ PidState ;

/* Variables and functions */
extern "C" { void pidSetTarget(PidState* state, int target);
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

void write_output(TYPE_1__* state, int target) {
  json output_json;
  TYPE_1__ output_temp_1 = *state;
  json output_temp_2;

  output_temp_2["target"] = output_temp_1.target;

  output_temp_2["integral"] = output_temp_1.integral;
  output_json["state"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int state_pointer__target = input_json["state"]["target"];
  long int state_pointer__integral = input_json["state"]["integral"];
  TYPE_1__ state_pointer = {state_pointer__target, state_pointer__integral};
  TYPE_1__* state = &state_pointer;
  int target = input_json["target"];
  clock_t begin = clock();
  pidSetTarget(state, target);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(state, target);
}