#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct pcg_state_setseq_128 {int state; int inc; } ;

/* Variables and functions */
extern  int PCG_DEFAULT_MULTIPLIER_128 ; 
extern "C" { void pcg_setseq_128_step_r(struct pcg_state_setseq_128 *rng);
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

void write_output(struct pcg_state_setseq_128* rng) {
  json output_json;
  struct pcg_state_setseq_128 output_temp_1 = *rng;
  json output_temp_2;

  output_temp_2["state"] = output_temp_1.state;

  output_temp_2["inc"] = output_temp_1.inc;
  output_json["rng"] = output_temp_2;

  output_json["PCG_DEFAULT_MULTIPLIER_128"] = PCG_DEFAULT_MULTIPLIER_128;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rng_pointer__state = input_json["rng"]["state"];
  int rng_pointer__inc = input_json["rng"]["inc"];
  struct pcg_state_setseq_128 rng_pointer = {rng_pointer__state, rng_pointer__inc};
  struct pcg_state_setseq_128* rng = &rng_pointer;
  PCG_DEFAULT_MULTIPLIER_128 = input_json["PCG_DEFAULT_MULTIPLIER_128"];
  clock_t begin = clock();
  pcg_setseq_128_step_r(rng);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rng);
}