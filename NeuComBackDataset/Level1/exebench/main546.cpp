#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct gdbarch {int /*<<< orphan*/  extract_return_value; } ;
typedef  int /*<<< orphan*/  gdbarch_extract_return_value_ftype ;

/* Variables and functions */
extern "C" { void set_gdbarch_extract_return_value (struct gdbarch *gdbarch, gdbarch_extract_return_value_ftype extract_return_value);
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

void write_output(struct gdbarch* gdbarch, int extract_return_value) {
  json output_json;
  struct gdbarch output_temp_1 = *gdbarch;
  json output_temp_2;

  output_temp_2["extract_return_value"] = output_temp_1.extract_return_value;
  output_json["gdbarch"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int gdbarch_pointer__extract_return_value = input_json["gdbarch"]["extract_return_value"];
  struct gdbarch gdbarch_pointer = {gdbarch_pointer__extract_return_value};
  struct gdbarch* gdbarch = &gdbarch_pointer;
  int extract_return_value = input_json["extract_return_value"];
  clock_t begin = clock();
  set_gdbarch_extract_return_value(gdbarch, extract_return_value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(gdbarch, extract_return_value);
}