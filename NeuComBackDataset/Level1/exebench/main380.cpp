#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  total_size; int /*<<< orphan*/  len; int /*<<< orphan*/  _; } ;
typedef  TYPE_1__ aa_int ;

/* Variables and functions */
extern "C" { void aa_int_swap(aa_int *self, aa_int *swap);
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

void write_output(TYPE_1__* self, TYPE_1__* swap) {
  json output_json;
  TYPE_1__ output_temp_1 = *self;
  json output_temp_2;

  output_temp_2["total_size"] = output_temp_1.total_size;

  output_temp_2["len"] = output_temp_1.len;

  output_temp_2["_"] = output_temp_1._;
  output_json["self"] = output_temp_2;
  TYPE_1__ output_temp_3 = *swap;
  json output_temp_4;

  output_temp_4["total_size"] = output_temp_3.total_size;

  output_temp_4["len"] = output_temp_3.len;

  output_temp_4["_"] = output_temp_3._;
  output_json["swap"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int self_pointer__total_size = input_json["self"]["total_size"];
  int self_pointer__len = input_json["self"]["len"];
  int self_pointer___ = input_json["self"]["_"];
  TYPE_1__ self_pointer = {self_pointer__total_size, self_pointer__len, self_pointer___};
  TYPE_1__* self = &self_pointer;
  int swap_pointer__total_size = input_json["swap"]["total_size"];
  int swap_pointer__len = input_json["swap"]["len"];
  int swap_pointer___ = input_json["swap"]["_"];
  TYPE_1__ swap_pointer = {swap_pointer__total_size, swap_pointer__len, swap_pointer___};
  TYPE_1__* swap = &swap_pointer;
  clock_t begin = clock();
  aa_int_swap(self, swap);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self, swap);
}