#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; scalar_t__ int64_value; } ;
typedef  TYPE_1__ value_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  flags_empty ; 
extern "C" { void zero_value(value_t *val);
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

void write_output(TYPE_1__* val) {
  json output_json;
  TYPE_1__ output_temp_1 = *val;
  json output_temp_2;

  output_temp_2["flags"] = output_temp_1.flags;

  output_temp_2["int64_value"] = output_temp_1.int64_value;
  output_json["val"] = output_temp_2;

  output_json["flags_empty"] = flags_empty;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int val_pointer__flags = input_json["val"]["flags"];
  long int val_pointer__int64_value = input_json["val"]["int64_value"];
  TYPE_1__ val_pointer = {val_pointer__flags, val_pointer__int64_value};
  TYPE_1__* val = &val_pointer;
  flags_empty = input_json["flags_empty"];
  clock_t begin = clock();
  zero_value(val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(val);
}