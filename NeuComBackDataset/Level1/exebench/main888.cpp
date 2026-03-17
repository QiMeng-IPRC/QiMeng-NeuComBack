#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double update_rate; int ctime_last; } ;
struct TYPE_5__ {TYPE_1__ state_dut1; } ;
typedef  TYPE_2__ qp_memory_t ;

/* Variables and functions */
extern "C" { void qp_set_rate_dut1(qp_memory_t *mem, double rate);
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

void write_output(TYPE_2__* mem, double rate) {
  json output_json;
  TYPE_2__ output_temp_1 = *mem;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["update_rate"] = output_temp_1.state_dut1.update_rate;

  output_temp_3["ctime_last"] = output_temp_1.state_dut1.ctime_last;
  output_temp_2["state_dut1"] = output_temp_3;
  output_json["mem"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double mem_pointer__state_dut1__update_rate = input_json["mem"]["state_dut1"]["update_rate"];
  int mem_pointer__state_dut1__ctime_last = input_json["mem"]["state_dut1"]["ctime_last"];
  TYPE_1__ mem_pointer__state_dut1 = {mem_pointer__state_dut1__update_rate, mem_pointer__state_dut1__ctime_last};
  TYPE_2__ mem_pointer = {mem_pointer__state_dut1};
  TYPE_2__* mem = &mem_pointer;
  double rate = input_json["rate"];
  clock_t begin = clock();
  qp_set_rate_dut1(mem, rate);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mem, rate);
}