#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ estimateRtt; scalar_t__ timeout; int devRtt; } ;
typedef  TYPE_1__ Resf ;

/* Variables and functions */
extern "C" { int calculateNewTimeout(Resf * resf);
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

void write_output(TYPE_1__* resf, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *resf;
  json output_temp_2;

  output_temp_2["estimateRtt"] = output_temp_1.estimateRtt;

  output_temp_2["timeout"] = output_temp_1.timeout;

  output_temp_2["devRtt"] = output_temp_1.devRtt;
  output_json["resf"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int resf_pointer__estimateRtt = input_json["resf"]["estimateRtt"];
  long int resf_pointer__timeout = input_json["resf"]["timeout"];
  int resf_pointer__devRtt = input_json["resf"]["devRtt"];
  TYPE_1__ resf_pointer = {resf_pointer__estimateRtt, resf_pointer__timeout, resf_pointer__devRtt};
  TYPE_1__* resf = &resf_pointer;
  clock_t begin = clock();
  int returnv = calculateNewTimeout(resf);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(resf, returnv);
}