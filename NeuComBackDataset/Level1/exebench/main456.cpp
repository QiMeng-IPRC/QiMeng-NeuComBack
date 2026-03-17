#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct nandsim_private {unsigned char last_cmd_byte; } ;

/* Variables and functions */
extern "C" { void last_cmd(struct nandsim_private *ns, unsigned char val);
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

void write_output(struct nandsim_private* ns, unsigned char val) {
  json output_json;
  struct nandsim_private output_temp_1 = *ns;
  json output_temp_2;

  output_temp_2["last_cmd_byte"] = output_temp_1.last_cmd_byte;
  output_json["ns"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned char ns_pointer__last_cmd_byte = input_json["ns"]["last_cmd_byte"];
  struct nandsim_private ns_pointer = {ns_pointer__last_cmd_byte};
  struct nandsim_private* ns = &ns_pointer;
  unsigned char val = input_json["val"];
  clock_t begin = clock();
  last_cmd(ns, val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ns, val);
}