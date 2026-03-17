#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ bfd_boolean ;
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
extern  scalar_t__ entry_from_cmdline ; 
extern  TYPE_1__ entry_symbol ; 
extern "C" { void lang_add_entry (const char *name, bfd_boolean cmdline);
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

void write_output(char* name, long int cmdline) {
  json output_json;

  output_json["name"] = name;

  output_json["entry_from_cmdline"] = entry_from_cmdline;
  json output_temp_1;

  output_temp_1["name"] = entry_symbol.name;
  output_json["entry_symbol"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* name = strdup(input_json["name"].get<std::string>().c_str());
  long int cmdline = input_json["cmdline"];
  entry_from_cmdline = input_json["entry_from_cmdline"];
  char* entry_symbol__name = strdup(input_json["entry_symbol"]["name"].get<std::string>().c_str());
  entry_symbol = {entry_symbol__name};
  clock_t begin = clock();
  lang_add_entry(name, cmdline);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(name, cmdline);
}