#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct gdbarch {int /*<<< orphan*/  deprecated_push_arguments; } ;
typedef  int /*<<< orphan*/  gdbarch_deprecated_push_arguments_ftype ;

/* Variables and functions */
extern "C" { void set_gdbarch_deprecated_push_arguments (struct gdbarch *gdbarch, gdbarch_deprecated_push_arguments_ftype deprecated_push_arguments);
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

void write_output(struct gdbarch* gdbarch, int deprecated_push_arguments) {
  json output_json;
  struct gdbarch output_temp_1 = *gdbarch;
  json output_temp_2;

  output_temp_2["deprecated_push_arguments"] = output_temp_1.deprecated_push_arguments;
  output_json["gdbarch"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int gdbarch_pointer__deprecated_push_arguments = input_json["gdbarch"]["deprecated_push_arguments"];
  struct gdbarch gdbarch_pointer = {gdbarch_pointer__deprecated_push_arguments};
  struct gdbarch* gdbarch = &gdbarch_pointer;
  int deprecated_push_arguments = input_json["deprecated_push_arguments"];
  clock_t begin = clock();
  set_gdbarch_deprecated_push_arguments(gdbarch, deprecated_push_arguments);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(gdbarch, deprecated_push_arguments);
}