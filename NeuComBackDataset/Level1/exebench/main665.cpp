#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  TYPE_1__ timeval_t ;

/* Variables and functions */
extern "C" { void timeval_sub(timeval_t* a, const timeval_t* b);
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

void write_output(TYPE_1__* a, TYPE_1__* b) {
  json output_json;
  TYPE_1__ output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["tv_usec"] = output_temp_1.tv_usec;

  output_temp_2["tv_sec"] = output_temp_1.tv_sec;
  output_json["a"] = output_temp_2;
  TYPE_1__ output_temp_3 = *b;
  json output_temp_4;

  output_temp_4["tv_usec"] = output_temp_3.tv_usec;

  output_temp_4["tv_sec"] = output_temp_3.tv_sec;
  output_json["b"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int a_pointer__tv_usec = input_json["a"]["tv_usec"];
  long int a_pointer__tv_sec = input_json["a"]["tv_sec"];
  TYPE_1__ a_pointer = {a_pointer__tv_usec, a_pointer__tv_sec};
  TYPE_1__* a = &a_pointer;
  long int b_pointer__tv_usec = input_json["b"]["tv_usec"];
  long int b_pointer__tv_sec = input_json["b"]["tv_sec"];
  TYPE_1__ b_pointer = {b_pointer__tv_usec, b_pointer__tv_sec};
  TYPE_1__* b = &b_pointer;
  clock_t begin = clock();
  timeval_sub(a, b);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b);
}