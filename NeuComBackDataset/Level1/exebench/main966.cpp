#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct relax {scalar_t__ curr; scalar_t__ dst; int accel; } ;

/* Variables and functions */
extern "C" { void set_duration(struct relax *r, float time);
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

void write_output(struct relax* r, float time) {
  json output_json;
  struct relax output_temp_1 = *r;
  json output_temp_2;

  output_temp_2["curr"] = output_temp_1.curr;

  output_temp_2["dst"] = output_temp_1.dst;

  output_temp_2["accel"] = output_temp_1.accel;
  output_json["r"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int r_pointer__curr = input_json["r"]["curr"];
  long int r_pointer__dst = input_json["r"]["dst"];
  int r_pointer__accel = input_json["r"]["accel"];
  struct relax r_pointer = {r_pointer__curr, r_pointer__dst, r_pointer__accel};
  struct relax* r = &r_pointer;
  float time = input_json["time"];
  clock_t begin = clock();
  set_duration(r, time);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(r, time);
}