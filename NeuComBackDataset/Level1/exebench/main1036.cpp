#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sm_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_addr; } ;

/* Variables and functions */
extern  TYPE_1__ g_smdb_virtual ; 
extern "C" { void smdb_store_allocated_address(sm_addr_t addr_alloc);
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

void write_output(int addr_alloc) {
  json output_json;
  json output_temp_1;

  output_temp_1["alloc_addr"] = g_smdb_virtual.alloc_addr;
  output_json["g_smdb_virtual"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int addr_alloc = input_json["addr_alloc"];
  int g_smdb_virtual__alloc_addr = input_json["g_smdb_virtual"]["alloc_addr"];
  g_smdb_virtual = {g_smdb_virtual__alloc_addr};
  clock_t begin = clock();
  smdb_store_allocated_address(addr_alloc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(addr_alloc);
}