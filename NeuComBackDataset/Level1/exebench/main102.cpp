#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int min_swscor; int min_swscor_below_max; double min_identity; } ;
typedef  TYPE_1__ ResultFilter ;

/* Variables and functions */
extern "C" { void resultSetFilterData(ResultFilter *p, int sw_abs, int sw_rel, double id_abs);
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

void write_output(TYPE_1__* p, int sw_abs, int sw_rel, double id_abs) {
  json output_json;
  TYPE_1__ output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["min_swscor"] = output_temp_1.min_swscor;

  output_temp_2["min_swscor_below_max"] = output_temp_1.min_swscor_below_max;

  output_temp_2["min_identity"] = output_temp_1.min_identity;
  output_json["p"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__min_swscor = input_json["p"]["min_swscor"];
  int p_pointer__min_swscor_below_max = input_json["p"]["min_swscor_below_max"];
  double p_pointer__min_identity = input_json["p"]["min_identity"];
  TYPE_1__ p_pointer = {p_pointer__min_swscor, p_pointer__min_swscor_below_max, p_pointer__min_identity};
  TYPE_1__* p = &p_pointer;
  int sw_abs = input_json["sw_abs"];
  int sw_rel = input_json["sw_rel"];
  double id_abs = input_json["id_abs"];
  clock_t begin = clock();
  resultSetFilterData(p, sw_abs, sw_rel, id_abs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, sw_abs, sw_rel, id_abs);
}