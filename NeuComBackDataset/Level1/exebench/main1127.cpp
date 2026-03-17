#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  limit; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__ seg_ss; } ;

/* Variables and functions */
extern  TYPE_2__ cpu_state ; 
extern  int /*<<< orphan*/  oldss ; 
extern  int /*<<< orphan*/  oldsslimit ; 
extern "C" { void restore_stack();
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

void write_output() {
  json output_json;
  json output_temp_1;
  json output_temp_2;

  output_temp_2["limit"] = cpu_state.seg_ss.limit;

  output_temp_2["base"] = cpu_state.seg_ss.base;
  output_temp_1["seg_ss"] = output_temp_2;
  output_json["cpu_state"] = output_temp_1;

  output_json["oldss"] = oldss;

  output_json["oldsslimit"] = oldsslimit;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cpu_state__seg_ss__limit = input_json["cpu_state"]["seg_ss"]["limit"];
  int cpu_state__seg_ss__base = input_json["cpu_state"]["seg_ss"]["base"];
  TYPE_1__ cpu_state__seg_ss = {cpu_state__seg_ss__limit, cpu_state__seg_ss__base};
  cpu_state = {cpu_state__seg_ss};
  oldss = input_json["oldss"];
  oldsslimit = input_json["oldsslimit"];
  clock_t begin = clock();
  restore_stack();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}