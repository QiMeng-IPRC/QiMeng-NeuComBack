#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  lockdep_reclaim_gfp; } ;

/* Variables and functions */
extern  TYPE_1__* current ; 
extern "C" { void lockdep_set_current_reclaim_state(gfp_t gfp_mask);
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

void write_output(int gfp_mask) {
  json output_json;
  TYPE_1__ output_temp_1 = *current;
  json output_temp_2;

  output_temp_2["lockdep_reclaim_gfp"] = output_temp_1.lockdep_reclaim_gfp;
  output_json["current"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int gfp_mask = input_json["gfp_mask"];
  int current_pointer__lockdep_reclaim_gfp = input_json["current"]["lockdep_reclaim_gfp"];
  TYPE_1__ current_pointer = {current_pointer__lockdep_reclaim_gfp};
  current = &current_pointer;
  clock_t begin = clock();
  lockdep_set_current_reclaim_state(gfp_mask);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(gfp_mask);
}