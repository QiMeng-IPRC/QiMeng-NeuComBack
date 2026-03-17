#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct linkedlist {int /*<<< orphan*/  first; int /*<<< orphan*/  iter; } ;

/* Variables and functions */
extern "C" { void linkedlist_iterate(struct linkedlist *l);
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

void write_output(struct linkedlist* l) {
  json output_json;
  struct linkedlist output_temp_1 = *l;
  json output_temp_2;

  output_temp_2["first"] = output_temp_1.first;

  output_temp_2["iter"] = output_temp_1.iter;
  output_json["l"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int l_pointer__first = input_json["l"]["first"];
  int l_pointer__iter = input_json["l"]["iter"];
  struct linkedlist l_pointer = {l_pointer__first, l_pointer__iter};
  struct linkedlist* l = &l_pointer;
  clock_t begin = clock();
  linkedlist_iterate(l);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(l);
}