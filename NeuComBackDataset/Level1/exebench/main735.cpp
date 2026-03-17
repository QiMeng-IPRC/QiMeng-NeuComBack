#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  TYPE_1__ timeval_t ;

/* Variables and functions */
extern "C" { int timeval_subtract (timeval_t *result, timeval_t *x, timeval_t *y);
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

void write_output(TYPE_1__* result, TYPE_1__* x, TYPE_1__* y, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *result;
  json output_temp_2;

  output_temp_2["tv_usec"] = output_temp_1.tv_usec;

  output_temp_2["tv_sec"] = output_temp_1.tv_sec;
  output_json["result"] = output_temp_2;
  TYPE_1__ output_temp_3 = *x;
  json output_temp_4;

  output_temp_4["tv_usec"] = output_temp_3.tv_usec;

  output_temp_4["tv_sec"] = output_temp_3.tv_sec;
  output_json["x"] = output_temp_4;
  TYPE_1__ output_temp_5 = *y;
  json output_temp_6;

  output_temp_6["tv_usec"] = output_temp_5.tv_usec;

  output_temp_6["tv_sec"] = output_temp_5.tv_sec;
  output_json["y"] = output_temp_6;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int result_pointer__tv_usec = input_json["result"]["tv_usec"];
  long int result_pointer__tv_sec = input_json["result"]["tv_sec"];
  TYPE_1__ result_pointer = {result_pointer__tv_usec, result_pointer__tv_sec};
  TYPE_1__* result = &result_pointer;
  long int x_pointer__tv_usec = input_json["x"]["tv_usec"];
  long int x_pointer__tv_sec = input_json["x"]["tv_sec"];
  TYPE_1__ x_pointer = {x_pointer__tv_usec, x_pointer__tv_sec};
  TYPE_1__* x = &x_pointer;
  long int y_pointer__tv_usec = input_json["y"]["tv_usec"];
  long int y_pointer__tv_sec = input_json["y"]["tv_sec"];
  TYPE_1__ y_pointer = {y_pointer__tv_usec, y_pointer__tv_sec};
  TYPE_1__* y = &y_pointer;
  clock_t begin = clock();
  int returnv = timeval_subtract(result, x, y);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(result, x, y, returnv);
}