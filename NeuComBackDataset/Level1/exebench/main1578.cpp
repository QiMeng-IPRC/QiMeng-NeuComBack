#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  is_greedy; } ;
typedef  TYPE_1__ apse_t ;
typedef  int /*<<< orphan*/  apse_bool_t ;

/* Variables and functions */
extern "C" { void apse_set_greedy(apse_t *ap, apse_bool_t greedy);
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

void write_output(TYPE_1__* ap, int greedy) {
  json output_json;
  TYPE_1__ output_temp_1 = *ap;
  json output_temp_2;

  output_temp_2["is_greedy"] = output_temp_1.is_greedy;
  output_json["ap"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ap_pointer__is_greedy = input_json["ap"]["is_greedy"];
  TYPE_1__ ap_pointer = {ap_pointer__is_greedy};
  TYPE_1__* ap = &ap_pointer;
  int greedy = input_json["greedy"];
  clock_t begin = clock();
  apse_set_greedy(ap, greedy);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ap, greedy);
}