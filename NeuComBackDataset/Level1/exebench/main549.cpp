#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x1; int y1; int x2; int y2; } ;
typedef  TYPE_1__ CSSRect ;

/* Variables and functions */
extern "C" { void css_set_rect(CSSRect *a, int x1, int y1, int x2, int y2);
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

void write_output(TYPE_1__* a, int x1, int y1, int x2, int y2) {
  json output_json;
  TYPE_1__ output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["x1"] = output_temp_1.x1;

  output_temp_2["y1"] = output_temp_1.y1;

  output_temp_2["x2"] = output_temp_1.x2;

  output_temp_2["y2"] = output_temp_1.y2;
  output_json["a"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int a_pointer__x1 = input_json["a"]["x1"];
  int a_pointer__y1 = input_json["a"]["y1"];
  int a_pointer__x2 = input_json["a"]["x2"];
  int a_pointer__y2 = input_json["a"]["y2"];
  TYPE_1__ a_pointer = {a_pointer__x1, a_pointer__y1, a_pointer__x2, a_pointer__y2};
  TYPE_1__* a = &a_pointer;
  int x1 = input_json["x1"];
  int y1 = input_json["y1"];
  int x2 = input_json["x2"];
  int y2 = input_json["y2"];
  clock_t begin = clock();
  css_set_rect(a, x1, y1, x2, y2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, x1, y1, x2, y2);
}