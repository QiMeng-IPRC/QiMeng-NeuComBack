#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double min; double max; scalar_t__ type; } ;
typedef  TYPE_1__ ProbDesc ;

/* Variables and functions */
extern "C" { void FixDist(ProbDesc *pd, double val);
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

void write_output(TYPE_1__* pd, double val) {
  json output_json;
  TYPE_1__ output_temp_1 = *pd;
  json output_temp_2;

  output_temp_2["min"] = output_temp_1.min;

  output_temp_2["max"] = output_temp_1.max;

  output_temp_2["type"] = output_temp_1.type;
  output_json["pd"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double pd_pointer__min = input_json["pd"]["min"];
  double pd_pointer__max = input_json["pd"]["max"];
  long int pd_pointer__type = input_json["pd"]["type"];
  TYPE_1__ pd_pointer = {pd_pointer__min, pd_pointer__max, pd_pointer__type};
  TYPE_1__* pd = &pd_pointer;
  double val = input_json["val"];
  clock_t begin = clock();
  FixDist(pd, val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pd, val);
}