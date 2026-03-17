#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ x ;
struct recfilter {double lastval; double a; scalar_t__ peak_detect; double maxval; double minval; scalar_t__ b; } ;

/* Variables and functions */
extern "C" { double recfilter_apply_int(struct recfilter *f, int x);
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

void write_output(struct recfilter* f, int x, double returnv) {
  json output_json;
  struct recfilter output_temp_1 = *f;
  json output_temp_2;

  output_temp_2["lastval"] = output_temp_1.lastval;

  output_temp_2["a"] = output_temp_1.a;

  output_temp_2["peak_detect"] = output_temp_1.peak_detect;

  output_temp_2["maxval"] = output_temp_1.maxval;

  output_temp_2["minval"] = output_temp_1.minval;

  output_temp_2["b"] = output_temp_1.b;
  output_json["f"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double f_pointer__lastval = input_json["f"]["lastval"];
  double f_pointer__a = input_json["f"]["a"];
  long int f_pointer__peak_detect = input_json["f"]["peak_detect"];
  double f_pointer__maxval = input_json["f"]["maxval"];
  double f_pointer__minval = input_json["f"]["minval"];
  long int f_pointer__b = input_json["f"]["b"];
  struct recfilter f_pointer = {f_pointer__lastval, f_pointer__a, f_pointer__peak_detect, f_pointer__maxval, f_pointer__minval, f_pointer__b};
  struct recfilter* f = &f_pointer;
  int x = input_json["x"];
  clock_t begin = clock();
  double returnv = recfilter_apply_int(f, x);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(f, x, returnv);
}