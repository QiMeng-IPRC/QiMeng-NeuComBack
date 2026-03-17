#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int repmode; int offset; scalar_t__ tick_f; int /*<<< orphan*/  fp_tag; } ;
typedef  TYPE_1__ file_t ;

/* Variables and functions */
extern "C" { void syncfile(file_t *file1, file_t *file2);
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

void write_output(TYPE_1__* file1, TYPE_1__* file2) {
  json output_json;
  TYPE_1__ output_temp_1 = *file1;
  json output_temp_2;

  output_temp_2["repmode"] = output_temp_1.repmode;

  output_temp_2["offset"] = output_temp_1.offset;

  output_temp_2["tick_f"] = output_temp_1.tick_f;

  output_temp_2["fp_tag"] = output_temp_1.fp_tag;
  output_json["file1"] = output_temp_2;
  TYPE_1__ output_temp_3 = *file2;
  json output_temp_4;

  output_temp_4["repmode"] = output_temp_3.repmode;

  output_temp_4["offset"] = output_temp_3.offset;

  output_temp_4["tick_f"] = output_temp_3.tick_f;

  output_temp_4["fp_tag"] = output_temp_3.fp_tag;
  output_json["file2"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int file1_pointer__repmode = input_json["file1"]["repmode"];
  int file1_pointer__offset = input_json["file1"]["offset"];
  long int file1_pointer__tick_f = input_json["file1"]["tick_f"];
  int file1_pointer__fp_tag = input_json["file1"]["fp_tag"];
  TYPE_1__ file1_pointer = {file1_pointer__repmode, file1_pointer__offset, file1_pointer__tick_f, file1_pointer__fp_tag};
  TYPE_1__* file1 = &file1_pointer;
  int file2_pointer__repmode = input_json["file2"]["repmode"];
  int file2_pointer__offset = input_json["file2"]["offset"];
  long int file2_pointer__tick_f = input_json["file2"]["tick_f"];
  int file2_pointer__fp_tag = input_json["file2"]["fp_tag"];
  TYPE_1__ file2_pointer = {file2_pointer__repmode, file2_pointer__offset, file2_pointer__tick_f, file2_pointer__fp_tag};
  TYPE_1__* file2 = &file2_pointer;
  clock_t begin = clock();
  syncfile(file1, file2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(file1, file2);
}