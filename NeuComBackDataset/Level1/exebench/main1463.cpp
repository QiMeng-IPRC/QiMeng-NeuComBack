#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct bomp_barrier {int max; scalar_t__ counter; scalar_t__ cycle; } ;

/* Variables and functions */
extern "C" { void bomp_barrier_init(struct bomp_barrier *barrier , int count);
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

void write_output(struct bomp_barrier* barrier, int count) {
  json output_json;
  struct bomp_barrier output_temp_1 = *barrier;
  json output_temp_2;

  output_temp_2["max"] = output_temp_1.max;

  output_temp_2["counter"] = output_temp_1.counter;

  output_temp_2["cycle"] = output_temp_1.cycle;
  output_json["barrier"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int barrier_pointer__max = input_json["barrier"]["max"];
  long int barrier_pointer__counter = input_json["barrier"]["counter"];
  long int barrier_pointer__cycle = input_json["barrier"]["cycle"];
  struct bomp_barrier barrier_pointer = {barrier_pointer__max, barrier_pointer__counter, barrier_pointer__cycle};
  struct bomp_barrier* barrier = &barrier_pointer;
  int count = input_json["count"];
  clock_t begin = clock();
  bomp_barrier_init(barrier, count);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(barrier, count);
}