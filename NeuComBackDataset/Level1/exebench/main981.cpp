#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  global_action ; 
extern  int global_bit ; 
extern  int /*<<< orphan*/  global_done ; 
extern  int /*<<< orphan*/  global_peer ; 
extern  int /*<<< orphan*/  global_shift ; 
extern  int /*<<< orphan*/  reduce_action ; 
extern  int /*<<< orphan*/  reduce_done ; 
extern  int /*<<< orphan*/  reduce_peer ; 
extern  int /*<<< orphan*/  reduce_shift ; 
extern "C" { void reduce_begin(void);
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

void write_output() {
  json output_json;

  output_json["global_action"] = global_action;

  output_json["global_bit"] = global_bit;

  output_json["global_done"] = global_done;

  output_json["global_peer"] = global_peer;

  output_json["global_shift"] = global_shift;

  output_json["reduce_action"] = reduce_action;

  output_json["reduce_done"] = reduce_done;

  output_json["reduce_peer"] = reduce_peer;

  output_json["reduce_shift"] = reduce_shift;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  global_action = input_json["global_action"];
  global_bit = input_json["global_bit"];
  global_done = input_json["global_done"];
  global_peer = input_json["global_peer"];
  global_shift = input_json["global_shift"];
  reduce_action = input_json["reduce_action"];
  reduce_done = input_json["reduce_done"];
  reduce_peer = input_json["reduce_peer"];
  reduce_shift = input_json["reduce_shift"];
  clock_t begin = clock();
  reduce_begin();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}