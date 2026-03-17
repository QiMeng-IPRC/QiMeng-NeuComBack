#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct rcar_du_group {int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
extern "C" { void rcar_du_group_put(struct rcar_du_group *rgrp);
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

void write_output(struct rcar_du_group* rgrp) {
  json output_json;
  struct rcar_du_group output_temp_1 = *rgrp;
  json output_temp_2;

  output_temp_2["use_count"] = output_temp_1.use_count;
  output_json["rgrp"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rgrp_pointer__use_count = input_json["rgrp"]["use_count"];
  struct rcar_du_group rgrp_pointer = {rgrp_pointer__use_count};
  struct rcar_du_group* rgrp = &rgrp_pointer;
  clock_t begin = clock();
  rcar_du_group_put(rgrp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rgrp);
}