#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int id; int mask; } ;
typedef  TYPE_1__ at_command_t ;

/* Variables and functions */
extern  int AT_CGMM ; 
extern "C" { int parse_cgmm(const char* string, int position, at_command_t* at_command);
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

void write_output(char* string, int position, TYPE_1__* at_command, int returnv) {
  json output_json;

  output_json["string"] = string;
  TYPE_1__ output_temp_1 = *at_command;
  json output_temp_2;

  output_temp_2["id"] = output_temp_1.id;

  output_temp_2["mask"] = output_temp_1.mask;
  output_json["at_command"] = output_temp_2;

  output_json["AT_CGMM"] = AT_CGMM;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* string = strdup(input_json["string"].get<std::string>().c_str());
  int position = input_json["position"];
  int at_command_pointer__id = input_json["at_command"]["id"];
  int at_command_pointer__mask = input_json["at_command"]["mask"];
  TYPE_1__ at_command_pointer = {at_command_pointer__id, at_command_pointer__mask};
  TYPE_1__* at_command = &at_command_pointer;
  AT_CGMM = input_json["AT_CGMM"];
  clock_t begin = clock();
  int returnv = parse_cgmm(string, position, at_command);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(string, position, at_command, returnv);
}