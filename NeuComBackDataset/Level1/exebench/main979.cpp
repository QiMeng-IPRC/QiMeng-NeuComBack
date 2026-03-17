#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int real; int imag; } ;
typedef  TYPE_1__ comp ;

/* Variables and functions */
extern "C" { void multiply(comp a, comp b, comp *c);
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

void write_output(TYPE_1__ a, TYPE_1__ b, TYPE_1__* c) {
  json output_json;
  TYPE_1__ output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["real"] = output_temp_1.real;

  output_temp_2["imag"] = output_temp_1.imag;
  output_json["c"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int a__real = input_json["a"]["real"];
  int a__imag = input_json["a"]["imag"];
  TYPE_1__ a = {a__real, a__imag};
  int b__real = input_json["b"]["real"];
  int b__imag = input_json["b"]["imag"];
  TYPE_1__ b = {b__real, b__imag};
  int c_pointer__real = input_json["c"]["real"];
  int c_pointer__imag = input_json["c"]["imag"];
  TYPE_1__ c_pointer = {c_pointer__real, c_pointer__imag};
  TYPE_1__* c = &c_pointer;
  clock_t begin = clock();
  multiply(a, b, c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b, c);
}