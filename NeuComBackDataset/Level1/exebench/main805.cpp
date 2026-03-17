#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PF_MALLOC ;
typedef  int /*<<< orphan*/  PF_FREE ;

/* Variables and functions */
extern  int /*<<< orphan*/  sg_pfFree ; 
extern  int /*<<< orphan*/  sg_pfMalloc ; 
extern "C" { void Moe_Reg_Malloc_Free(PF_MALLOC pfMalloc, PF_FREE pfFree);
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

void write_output(int pfMalloc, int pfFree) {
  json output_json;

  output_json["sg_pfFree"] = sg_pfFree;

  output_json["sg_pfMalloc"] = sg_pfMalloc;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pfMalloc = input_json["pfMalloc"];
  int pfFree = input_json["pfFree"];
  sg_pfFree = input_json["sg_pfFree"];
  sg_pfMalloc = input_json["sg_pfMalloc"];
  clock_t begin = clock();
  Moe_Reg_Malloc_Free(pfMalloc, pfFree);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pfMalloc, pfFree);
}