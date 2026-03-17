#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* program_name; } ;
typedef  TYPE_1__ mut_log ;

/* Variables and functions */
extern "C" { void mut_log_prog_name(mut_log *log, char const * prog_name);
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

void write_output(TYPE_1__* log, char* prog_name) {
  json output_json;
  TYPE_1__ output_temp_1 = *log;
  json output_temp_2;

  output_temp_2["program_name"] = output_temp_1.program_name;
  output_json["log"] = output_temp_2;

  output_json["prog_name"] = prog_name;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* log_pointer__program_name = strdup(input_json["log"]["program_name"].get<std::string>().c_str());
  TYPE_1__ log_pointer = {log_pointer__program_name};
  TYPE_1__* log = &log_pointer;
  char* prog_name = strdup(input_json["prog_name"].get<std::string>().c_str());
  clock_t begin = clock();
  mut_log_prog_name(log, prog_name);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(log, prog_name);
}