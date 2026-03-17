#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float outputS; float const alpha; double outputS_old; double outputB_old; double outputB; double beta; } ;
typedef  TYPE_1__ DEMAFilter ;

/* Variables and functions */
extern "C" { float filter_DEMA(DEMAFilter *filter, const float readIn);
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

void write_output(TYPE_1__* filter, float readIn, float returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *filter;
  json output_temp_2;

  output_temp_2["outputS"] = output_temp_1.outputS;

  output_temp_2["alpha"] = output_temp_1.alpha;

  output_temp_2["outputS_old"] = output_temp_1.outputS_old;

  output_temp_2["outputB_old"] = output_temp_1.outputB_old;

  output_temp_2["outputB"] = output_temp_1.outputB;

  output_temp_2["beta"] = output_temp_1.beta;
  output_json["filter"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float filter_pointer__outputS = input_json["filter"]["outputS"];
  float filter_pointer__alpha = input_json["filter"]["alpha"];
  double filter_pointer__outputS_old = input_json["filter"]["outputS_old"];
  double filter_pointer__outputB_old = input_json["filter"]["outputB_old"];
  double filter_pointer__outputB = input_json["filter"]["outputB"];
  double filter_pointer__beta = input_json["filter"]["beta"];
  TYPE_1__ filter_pointer = {filter_pointer__outputS, filter_pointer__alpha, filter_pointer__outputS_old, filter_pointer__outputB_old, filter_pointer__outputB, filter_pointer__beta};
  TYPE_1__* filter = &filter_pointer;
  float readIn = input_json["readIn"];
  clock_t begin = clock();
  float returnv = filter_DEMA(filter, readIn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(filter, readIn, returnv);
}