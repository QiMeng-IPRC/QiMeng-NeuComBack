#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct domain {int /*<<< orphan*/  phi_max; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  phi_max ; 
extern "C" { void setBCParams(struct domain *theDomain);
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

void write_output(struct domain* theDomain) {
  json output_json;
  struct domain output_temp_1 = *theDomain;
  json output_temp_2;

  output_temp_2["phi_max"] = output_temp_1.phi_max;
  output_json["theDomain"] = output_temp_2;

  output_json["phi_max"] = phi_max;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int theDomain_pointer__phi_max = input_json["theDomain"]["phi_max"];
  struct domain theDomain_pointer = {theDomain_pointer__phi_max};
  struct domain* theDomain = &theDomain_pointer;
  phi_max = input_json["phi_max"];
  clock_t begin = clock();
  setBCParams(theDomain);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(theDomain);
}