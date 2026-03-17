#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int monster_race_idx; int window; } ;

/* Variables and functions */
extern  TYPE_1__* p_ptr ; 
extern "C" { void monster_race_track(int r_idx);
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

void write_output(int r_idx) {
  json output_json;
  TYPE_1__ output_temp_1 = *p_ptr;
  json output_temp_2;

  output_temp_2["monster_race_idx"] = output_temp_1.monster_race_idx;

  output_temp_2["window"] = output_temp_1.window;
  output_json["p_ptr"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int r_idx = input_json["r_idx"];
  int p_ptr_pointer__monster_race_idx = input_json["p_ptr"]["monster_race_idx"];
  int p_ptr_pointer__window = input_json["p_ptr"]["window"];
  TYPE_1__ p_ptr_pointer = {p_ptr_pointer__monster_race_idx, p_ptr_pointer__window};
  p_ptr = &p_ptr_pointer;
  clock_t begin = clock();
  monster_race_track(r_idx);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(r_idx);
}