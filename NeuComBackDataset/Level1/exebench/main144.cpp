#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double close_repulsion_a; double close_repulsion_b; } ;
struct TYPE_5__ {TYPE_1__ force_params; } ;
typedef  TYPE_2__ map_env_t ;

/* Variables and functions */
extern "C" { void map_env_adjust_close_repulsion(map_env_t *map_env, double amt_a, double amt_b);
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

void write_output(TYPE_2__* map_env, double amt_a, double amt_b) {
  json output_json;
  TYPE_2__ output_temp_1 = *map_env;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["close_repulsion_a"] = output_temp_1.force_params.close_repulsion_a;

  output_temp_3["close_repulsion_b"] = output_temp_1.force_params.close_repulsion_b;
  output_temp_2["force_params"] = output_temp_3;
  output_json["map_env"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double map_env_pointer__force_params__close_repulsion_a = input_json["map_env"]["force_params"]["close_repulsion_a"];
  double map_env_pointer__force_params__close_repulsion_b = input_json["map_env"]["force_params"]["close_repulsion_b"];
  TYPE_1__ map_env_pointer__force_params = {map_env_pointer__force_params__close_repulsion_a, map_env_pointer__force_params__close_repulsion_b};
  TYPE_2__ map_env_pointer = {map_env_pointer__force_params};
  TYPE_2__* map_env = &map_env_pointer;
  double amt_a = input_json["amt_a"];
  double amt_b = input_json["amt_b"];
  clock_t begin = clock();
  map_env_adjust_close_repulsion(map_env, amt_a, amt_b);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(map_env, amt_a, amt_b);
}