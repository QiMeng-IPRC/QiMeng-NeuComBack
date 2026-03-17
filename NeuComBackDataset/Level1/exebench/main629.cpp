#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct gdev_time {unsigned long sec; unsigned long usec; scalar_t__ neg; } ;

/* Variables and functions */
extern "C" { void gdev_time_ms(struct gdev_time *ret, unsigned long ms);
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

void write_output(struct gdev_time* ret, unsigned long int ms) {
  json output_json;
  struct gdev_time output_temp_1 = *ret;
  json output_temp_2;

  output_temp_2["sec"] = output_temp_1.sec;

  output_temp_2["usec"] = output_temp_1.usec;

  output_temp_2["neg"] = output_temp_1.neg;
  output_json["ret"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int ret_pointer__sec = input_json["ret"]["sec"];
  unsigned long int ret_pointer__usec = input_json["ret"]["usec"];
  long int ret_pointer__neg = input_json["ret"]["neg"];
  struct gdev_time ret_pointer = {ret_pointer__sec, ret_pointer__usec, ret_pointer__neg};
  struct gdev_time* ret = &ret_pointer;
  unsigned long int ms = input_json["ms"];
  clock_t begin = clock();
  gdev_time_ms(ret, ms);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ret, ms);
}