#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  env; int /*<<< orphan*/  ended; int /*<<< orphan*/  looped; } ;
struct pmd_part {TYPE_2__ loop; } ;
struct TYPE_3__ {int /*<<< orphan*/  env; int /*<<< orphan*/  ended; int /*<<< orphan*/  looped; } ;
struct driver_pmd {TYPE_1__ loop; } ;

/* Variables and functions */
extern "C" { void pmd_part_loop_check( struct driver_pmd *pmd, struct pmd_part *part );
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

void write_output(struct driver_pmd* pmd, struct pmd_part* part) {
  json output_json;
  struct driver_pmd output_temp_1 = *pmd;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["env"] = output_temp_1.loop.env;

  output_temp_3["ended"] = output_temp_1.loop.ended;

  output_temp_3["looped"] = output_temp_1.loop.looped;
  output_temp_2["loop"] = output_temp_3;
  output_json["pmd"] = output_temp_2;
  struct pmd_part output_temp_4 = *part;
  json output_temp_5;
  json output_temp_6;

  output_temp_6["env"] = output_temp_4.loop.env;

  output_temp_6["ended"] = output_temp_4.loop.ended;

  output_temp_6["looped"] = output_temp_4.loop.looped;
  output_temp_5["loop"] = output_temp_6;
  output_json["part"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pmd_pointer__loop__env = input_json["pmd"]["loop"]["env"];
  int pmd_pointer__loop__ended = input_json["pmd"]["loop"]["ended"];
  int pmd_pointer__loop__looped = input_json["pmd"]["loop"]["looped"];
  TYPE_1__ pmd_pointer__loop = {pmd_pointer__loop__env, pmd_pointer__loop__ended, pmd_pointer__loop__looped};
  struct driver_pmd pmd_pointer = {pmd_pointer__loop};
  struct driver_pmd* pmd = &pmd_pointer;
  int part_pointer__loop__env = input_json["part"]["loop"]["env"];
  int part_pointer__loop__ended = input_json["part"]["loop"]["ended"];
  int part_pointer__loop__looped = input_json["part"]["loop"]["looped"];
  TYPE_2__ part_pointer__loop = {part_pointer__loop__env, part_pointer__loop__ended, part_pointer__loop__looped};
  struct pmd_part part_pointer = {part_pointer__loop};
  struct pmd_part* part = &part_pointer;
  clock_t begin = clock();
  pmd_part_loop_check(pmd, part);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pmd, part);
}