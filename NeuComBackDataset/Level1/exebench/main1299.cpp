#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct radix_tree_iter {unsigned long next_index; scalar_t__ index; } ;

/* Variables and functions */
extern "C" { void ** radix_tree_iter_init(struct radix_tree_iter *iter, unsigned long start);
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

void write_output(struct radix_tree_iter* iter, unsigned long int start) {
  json output_json;
  struct radix_tree_iter output_temp_1 = *iter;
  json output_temp_2;

  output_temp_2["next_index"] = output_temp_1.next_index;

  output_temp_2["index"] = output_temp_1.index;
  output_json["iter"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int iter_pointer__next_index = input_json["iter"]["next_index"];
  long int iter_pointer__index = input_json["iter"]["index"];
  struct radix_tree_iter iter_pointer = {iter_pointer__next_index, iter_pointer__index};
  struct radix_tree_iter* iter = &iter_pointer;
  unsigned long int start = input_json["start"];
  clock_t begin = clock();
  radix_tree_iter_init(iter, start);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(iter, start);
}