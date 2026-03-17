#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct rand_struct {int max_value; double max_value_dbl; unsigned long seed1; unsigned long seed2; } ;

/* Variables and functions */
extern "C" { void randominit(struct rand_struct *rand_st, unsigned long seed1, unsigned long seed2);
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

void write_output(struct rand_struct* rand_st, unsigned long int seed1, unsigned long int seed2) {
  json output_json;
  struct rand_struct output_temp_1 = *rand_st;
  json output_temp_2;

  output_temp_2["max_value"] = output_temp_1.max_value;

  output_temp_2["max_value_dbl"] = output_temp_1.max_value_dbl;

  output_temp_2["seed1"] = output_temp_1.seed1;

  output_temp_2["seed2"] = output_temp_1.seed2;
  output_json["rand_st"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rand_st_pointer__max_value = input_json["rand_st"]["max_value"];
  double rand_st_pointer__max_value_dbl = input_json["rand_st"]["max_value_dbl"];
  unsigned long int rand_st_pointer__seed1 = input_json["rand_st"]["seed1"];
  unsigned long int rand_st_pointer__seed2 = input_json["rand_st"]["seed2"];
  struct rand_struct rand_st_pointer = {rand_st_pointer__max_value, rand_st_pointer__max_value_dbl, rand_st_pointer__seed1, rand_st_pointer__seed2};
  struct rand_struct* rand_st = &rand_st_pointer;
  unsigned long int seed1 = input_json["seed1"];
  unsigned long int seed2 = input_json["seed2"];
  clock_t begin = clock();
  randominit(rand_st, seed1, seed2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rand_st, seed1, seed2);
}