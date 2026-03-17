#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ plainchar; int /*<<< orphan*/  step; } ;
typedef  TYPE_1__ base64_decodestate ;

/* Variables and functions */
extern  int /*<<< orphan*/  step_a ; 
extern "C" { void base64_init_decodestate( base64_decodestate* state_in );
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

void write_output(TYPE_1__* state_in) {
  json output_json;
  TYPE_1__ output_temp_1 = *state_in;
  json output_temp_2;

  output_temp_2["plainchar"] = output_temp_1.plainchar;

  output_temp_2["step"] = output_temp_1.step;
  output_json["state_in"] = output_temp_2;

  output_json["step_a"] = step_a;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int state_in_pointer__plainchar = input_json["state_in"]["plainchar"];
  int state_in_pointer__step = input_json["state_in"]["step"];
  TYPE_1__ state_in_pointer = {state_in_pointer__plainchar, state_in_pointer__step};
  TYPE_1__* state_in = &state_in_pointer;
  step_a = input_json["step_a"];
  clock_t begin = clock();
  base64_init_decodestate(state_in);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(state_in);
}