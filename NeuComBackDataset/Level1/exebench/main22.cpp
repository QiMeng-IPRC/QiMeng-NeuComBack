#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  num_err ; 
extern  int /*<<< orphan*/  num_sev ; 
extern  int /*<<< orphan*/  num_war ; 
extern  scalar_t__ old_err ; 
extern  scalar_t__ old_sev ; 
extern  scalar_t__ old_war ; 
extern "C" { void restdia();
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

  output_json["num_err"] = num_err;

  output_json["num_sev"] = num_sev;

  output_json["num_war"] = num_war;

  output_json["old_err"] = old_err;

  output_json["old_sev"] = old_sev;

  output_json["old_war"] = old_war;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  num_err = input_json["num_err"];
  num_sev = input_json["num_sev"];
  num_war = input_json["num_war"];
  old_err = input_json["old_err"];
  old_sev = input_json["old_sev"];
  old_war = input_json["old_war"];
  clock_t begin = clock();
  restdia();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}