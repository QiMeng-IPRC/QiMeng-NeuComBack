#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct bio {unsigned int bi_comp_cpu; } ;

/* Variables and functions */
extern "C" { __attribute__((always_)) void bio_set_completion_cpu(struct bio *bio, unsigned int cpu);
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

void write_output(struct bio* bio, unsigned int cpu) {
  json output_json;
  struct bio output_temp_1 = *bio;
  json output_temp_2;

  output_temp_2["bi_comp_cpu"] = output_temp_1.bi_comp_cpu;
  output_json["bio"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int bio_pointer__bi_comp_cpu = input_json["bio"]["bi_comp_cpu"];
  struct bio bio_pointer = {bio_pointer__bi_comp_cpu};
  struct bio* bio = &bio_pointer;
  unsigned int cpu = input_json["cpu"];
  clock_t begin = clock();
  bio_set_completion_cpu(bio, cpu);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(bio, cpu);
}