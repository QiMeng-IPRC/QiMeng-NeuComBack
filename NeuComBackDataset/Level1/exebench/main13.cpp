#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bytes; int codepoints; int graphemes; int columns; } ;
typedef  TYPE_1__ TickitStringPos ;

/* Variables and functions */
extern "C" { void tickit_stringpos_limit_columns(TickitStringPos *pos, int columns);
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

void write_output(TYPE_1__* pos, int columns) {
  json output_json;
  TYPE_1__ output_temp_1 = *pos;
  json output_temp_2;

  output_temp_2["bytes"] = output_temp_1.bytes;

  output_temp_2["codepoints"] = output_temp_1.codepoints;

  output_temp_2["graphemes"] = output_temp_1.graphemes;

  output_temp_2["columns"] = output_temp_1.columns;
  output_json["pos"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pos_pointer__bytes = input_json["pos"]["bytes"];
  int pos_pointer__codepoints = input_json["pos"]["codepoints"];
  int pos_pointer__graphemes = input_json["pos"]["graphemes"];
  int pos_pointer__columns = input_json["pos"]["columns"];
  TYPE_1__ pos_pointer = {pos_pointer__bytes, pos_pointer__codepoints, pos_pointer__graphemes, pos_pointer__columns};
  TYPE_1__* pos = &pos_pointer;
  int columns = input_json["columns"];
  clock_t begin = clock();
  tickit_stringpos_limit_columns(pos, columns);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pos, columns);
}