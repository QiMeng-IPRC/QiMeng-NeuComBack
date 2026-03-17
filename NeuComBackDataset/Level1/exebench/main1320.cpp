#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float load_factor; scalar_t__ capacity; } ;
typedef  TYPE_1__ table_lp ;

/* Variables and functions */
extern "C" { int calc_resize_threshold(table_lp *T);
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

void write_output(TYPE_1__* T, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *T;
  json output_temp_2;

  output_temp_2["load_factor"] = output_temp_1.load_factor;

  output_temp_2["capacity"] = output_temp_1.capacity;
  output_json["T"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float T_pointer__load_factor = input_json["T"]["load_factor"];
  long int T_pointer__capacity = input_json["T"]["capacity"];
  TYPE_1__ T_pointer = {T_pointer__load_factor, T_pointer__capacity};
  TYPE_1__* T = &T_pointer;
  clock_t begin = clock();
  int returnv = calc_resize_threshold(T);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(T, returnv);
}