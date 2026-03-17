#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ RaiseError; } ;
struct TYPE_4__ {scalar_t__ RaiseError; } ;
typedef  scalar_t__ ErrorFunction ;
typedef  TYPE_1__ DATA_TYPE ;

/* Variables and functions */
extern  TYPE_2__ iError ; 
extern "C" { ErrorFunction SetErrorFunction(DATA_TYPE *Dict,ErrorFunction fn);
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

void write_output(TYPE_1__* Dict, long int fn, long int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *Dict;
  json output_temp_2;

  output_temp_2["RaiseError"] = output_temp_1.RaiseError;
  output_json["Dict"] = output_temp_2;
  json output_temp_3;

  output_temp_3["RaiseError"] = iError.RaiseError;
  output_json["iError"] = output_temp_3;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int Dict_pointer__RaiseError = input_json["Dict"]["RaiseError"];
  TYPE_1__ Dict_pointer = {Dict_pointer__RaiseError};
  TYPE_1__* Dict = &Dict_pointer;
  long int fn = input_json["fn"];
  long int iError__RaiseError = input_json["iError"]["RaiseError"];
  iError = {iError__RaiseError};
  clock_t begin = clock();
  long int returnv = SetErrorFunction(Dict, fn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(Dict, fn, returnv);
}