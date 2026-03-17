#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float x; float y; } ;
typedef  TYPE_1__ gbVec2 ;

/* Variables and functions */
extern "C" { void gb_vec2_div(gbVec2 *d, gbVec2 v, float s);
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

void write_output(TYPE_1__* d, TYPE_1__ v, float s) {
  json output_json;
  TYPE_1__ output_temp_1 = *d;
  json output_temp_2;

  output_temp_2["x"] = output_temp_1.x;

  output_temp_2["y"] = output_temp_1.y;
  output_json["d"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float d_pointer__x = input_json["d"]["x"];
  float d_pointer__y = input_json["d"]["y"];
  TYPE_1__ d_pointer = {d_pointer__x, d_pointer__y};
  TYPE_1__* d = &d_pointer;
  float v__x = input_json["v"]["x"];
  float v__y = input_json["v"]["y"];
  TYPE_1__ v = {v__x, v__y};
  float s = input_json["s"];
  clock_t begin = clock();
  gb_vec2_div(d, v, s);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(d, v, s);
}