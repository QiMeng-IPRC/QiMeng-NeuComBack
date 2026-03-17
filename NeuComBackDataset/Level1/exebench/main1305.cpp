#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  char* defdemoname ; 
extern  int /*<<< orphan*/  ga_playdemo ; 
extern  int /*<<< orphan*/  gameaction ; 
extern "C" { void G_DeferedPlayDemo (char *name);
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

void write_output(char* name) {
  json output_json;

  output_json["name"] = name;

  output_json["defdemoname"] = defdemoname;

  output_json["ga_playdemo"] = ga_playdemo;

  output_json["gameaction"] = gameaction;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* name = strdup(input_json["name"].get<std::string>().c_str());
  defdemoname = strdup(input_json["defdemoname"].get<std::string>().c_str());
  ga_playdemo = input_json["ga_playdemo"];
  gameaction = input_json["gameaction"];
  clock_t begin = clock();
  G_DeferedPlayDemo(name);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(name);
}