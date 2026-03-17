#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ qh_vec3_t ;

/* Variables and functions */
extern "C" { void qh__vec3_add(qh_vec3_t* a, qh_vec3_t* b);
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

void write_output(TYPE_1__* a, TYPE_1__* b) {
  json output_json;
  TYPE_1__ output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["a"] = output_temp_2;
  TYPE_1__ output_temp_3 = *b;
  json output_temp_4;

  output_temp_4["z"] = output_temp_3.z;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["b"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int a_pointer__z = input_json["a"]["z"];
  long int a_pointer__y = input_json["a"]["y"];
  long int a_pointer__x = input_json["a"]["x"];
  TYPE_1__ a_pointer = {a_pointer__z, a_pointer__y, a_pointer__x};
  TYPE_1__* a = &a_pointer;
  long int b_pointer__z = input_json["b"]["z"];
  long int b_pointer__y = input_json["b"]["y"];
  long int b_pointer__x = input_json["b"]["x"];
  TYPE_1__ b_pointer = {b_pointer__z, b_pointer__y, b_pointer__x};
  TYPE_1__* b = &b_pointer;
  clock_t begin = clock();
  qh__vec3_add(a, b);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b);
}