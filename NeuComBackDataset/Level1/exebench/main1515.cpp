#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double d_value; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ e8_numeric ;

/* Variables and functions */
extern  int /*<<< orphan*/  numFloat ; 
extern "C" { void e8_numeric_double(e8_numeric *a, double value);
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

void write_output(TYPE_1__* a, double value) {
  json output_json;
  TYPE_1__ output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["d_value"] = output_temp_1.d_value;

  output_temp_2["type"] = output_temp_1.type;
  output_json["a"] = output_temp_2;

  output_json["numFloat"] = numFloat;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double a_pointer__d_value = input_json["a"]["d_value"];
  int a_pointer__type = input_json["a"]["type"];
  TYPE_1__ a_pointer = {a_pointer__d_value, a_pointer__type};
  TYPE_1__* a = &a_pointer;
  double value = input_json["value"];
  numFloat = input_json["numFloat"];
  clock_t begin = clock();
  e8_numeric_double(a, value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, value);
}