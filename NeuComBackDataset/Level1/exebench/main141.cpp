#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct os_time {scalar_t__ usec; scalar_t__ sec; } ;

/* Variables and functions */
extern "C" { void os_time_sub(struct os_time *a, struct os_time *b, struct os_time *res);
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

void write_output(struct os_time* a, struct os_time* b, struct os_time* res) {
  json output_json;
  struct os_time output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["usec"] = output_temp_1.usec;

  output_temp_2["sec"] = output_temp_1.sec;
  output_json["a"] = output_temp_2;
  struct os_time output_temp_3 = *b;
  json output_temp_4;

  output_temp_4["usec"] = output_temp_3.usec;

  output_temp_4["sec"] = output_temp_3.sec;
  output_json["b"] = output_temp_4;
  struct os_time output_temp_5 = *res;
  json output_temp_6;

  output_temp_6["usec"] = output_temp_5.usec;

  output_temp_6["sec"] = output_temp_5.sec;
  output_json["res"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int a_pointer__usec = input_json["a"]["usec"];
  long int a_pointer__sec = input_json["a"]["sec"];
  struct os_time a_pointer = {a_pointer__usec, a_pointer__sec};
  struct os_time* a = &a_pointer;
  long int b_pointer__usec = input_json["b"]["usec"];
  long int b_pointer__sec = input_json["b"]["sec"];
  struct os_time b_pointer = {b_pointer__usec, b_pointer__sec};
  struct os_time* b = &b_pointer;
  long int res_pointer__usec = input_json["res"]["usec"];
  long int res_pointer__sec = input_json["res"]["sec"];
  struct os_time res_pointer = {res_pointer__usec, res_pointer__sec};
  struct os_time* res = &res_pointer;
  clock_t begin = clock();
  os_time_sub(a, b, res);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b, res);
}