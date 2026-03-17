#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ Vector2 ;

/* Variables and functions */
extern "C" { void vec2_add(Vector2 *v, const Vector2 *u);
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

void write_output(TYPE_1__* v, TYPE_1__* u) {
  json output_json;
  TYPE_1__ output_temp_1 = *v;
  json output_temp_2;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["v"] = output_temp_2;
  TYPE_1__ output_temp_3 = *u;
  json output_temp_4;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["u"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int v_pointer__y = input_json["v"]["y"];
  long int v_pointer__x = input_json["v"]["x"];
  TYPE_1__ v_pointer = {v_pointer__y, v_pointer__x};
  TYPE_1__* v = &v_pointer;
  long int u_pointer__y = input_json["u"]["y"];
  long int u_pointer__x = input_json["u"]["x"];
  TYPE_1__ u_pointer = {u_pointer__y, u_pointer__x};
  TYPE_1__* u = &u_pointer;
  clock_t begin = clock();
  vec2_add(v, u);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(v, u);
}