#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct vmem_altmap {unsigned long alloc; } ;

/* Variables and functions */
extern "C" { void vmem_altmap_free(struct vmem_altmap *altmap, unsigned long nr_pfns);
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

void write_output(struct vmem_altmap* altmap, unsigned long int nr_pfns) {
  json output_json;
  struct vmem_altmap output_temp_1 = *altmap;
  json output_temp_2;

  output_temp_2["alloc"] = output_temp_1.alloc;
  output_json["altmap"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int altmap_pointer__alloc = input_json["altmap"]["alloc"];
  struct vmem_altmap altmap_pointer = {altmap_pointer__alloc};
  struct vmem_altmap* altmap = &altmap_pointer;
  unsigned long int nr_pfns = input_json["nr_pfns"];
  clock_t begin = clock();
  vmem_altmap_free(altmap, nr_pfns);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(altmap, nr_pfns);
}