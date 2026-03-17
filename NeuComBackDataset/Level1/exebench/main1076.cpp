#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int maxcall; int epsilon; int stepbound; int ftol; int xtol; int gtol; } ;
typedef  TYPE_1__ lm_control_type ;

/* Variables and functions */
extern  int DBL_EPSILON ; 
extern "C" { void lm_initialize_control(lm_control_type * control);
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

void write_output(TYPE_1__* control) {
  json output_json;
  TYPE_1__ output_temp_1 = *control;
  json output_temp_2;

  output_temp_2["maxcall"] = output_temp_1.maxcall;

  output_temp_2["epsilon"] = output_temp_1.epsilon;

  output_temp_2["stepbound"] = output_temp_1.stepbound;

  output_temp_2["ftol"] = output_temp_1.ftol;

  output_temp_2["xtol"] = output_temp_1.xtol;

  output_temp_2["gtol"] = output_temp_1.gtol;
  output_json["control"] = output_temp_2;

  output_json["DBL_EPSILON"] = DBL_EPSILON;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int control_pointer__maxcall = input_json["control"]["maxcall"];
  int control_pointer__epsilon = input_json["control"]["epsilon"];
  int control_pointer__stepbound = input_json["control"]["stepbound"];
  int control_pointer__ftol = input_json["control"]["ftol"];
  int control_pointer__xtol = input_json["control"]["xtol"];
  int control_pointer__gtol = input_json["control"]["gtol"];
  TYPE_1__ control_pointer = {control_pointer__maxcall, control_pointer__epsilon, control_pointer__stepbound, control_pointer__ftol, control_pointer__xtol, control_pointer__gtol};
  TYPE_1__* control = &control_pointer;
  DBL_EPSILON = input_json["DBL_EPSILON"];
  clock_t begin = clock();
  lm_initialize_control(control);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(control);
}