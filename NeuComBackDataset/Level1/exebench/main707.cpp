#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int j; unsigned int a; unsigned int f; } ;
typedef  TYPE_1__ T ;

/* Variables and functions */
extern "C" { void foo (T *x, unsigned int y);
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

void write_output(TYPE_1__* x, unsigned int y) {
  json output_json;
  TYPE_1__ output_temp_1 = *x;
  json output_temp_2;

  output_temp_2["j"] = output_temp_1.j;

  output_temp_2["a"] = output_temp_1.a;

  output_temp_2["f"] = output_temp_1.f;
  output_json["x"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int x_pointer__j = input_json["x"]["j"];
  unsigned int x_pointer__a = input_json["x"]["a"];
  unsigned int x_pointer__f = input_json["x"]["f"];
  TYPE_1__ x_pointer = {x_pointer__j, x_pointer__a, x_pointer__f};
  TYPE_1__* x = &x_pointer;
  unsigned int y = input_json["y"];
  clock_t begin = clock();
  foo(x, y);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, y);
}