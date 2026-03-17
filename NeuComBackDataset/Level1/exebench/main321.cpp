#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cursor_line_width; } ;
typedef  TYPE_1__ nio_console ;

/* Variables and functions */
extern "C" { void nio_cursor_width(nio_console* c, int cursor_width);
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

void write_output(TYPE_1__* c, int cursor_width) {
  json output_json;
  TYPE_1__ output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["cursor_line_width"] = output_temp_1.cursor_line_width;
  output_json["c"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int c_pointer__cursor_line_width = input_json["c"]["cursor_line_width"];
  TYPE_1__ c_pointer = {c_pointer__cursor_line_width};
  TYPE_1__* c = &c_pointer;
  int cursor_width = input_json["cursor_width"];
  clock_t begin = clock();
  nio_cursor_width(c, cursor_width);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c, cursor_width);
}