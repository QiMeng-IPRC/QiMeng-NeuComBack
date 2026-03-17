#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct ty_sb {int len; int gap; int buf; } ;

/* Variables and functions */
extern "C" { void ty_sb_lskip(struct ty_sb *sb, int len);
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

void write_output(struct ty_sb* sb, int len) {
  json output_json;
  struct ty_sb output_temp_1 = *sb;
  json output_temp_2;

  output_temp_2["len"] = output_temp_1.len;

  output_temp_2["gap"] = output_temp_1.gap;

  output_temp_2["buf"] = output_temp_1.buf;
  output_json["sb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int sb_pointer__len = input_json["sb"]["len"];
  int sb_pointer__gap = input_json["sb"]["gap"];
  int sb_pointer__buf = input_json["sb"]["buf"];
  struct ty_sb sb_pointer = {sb_pointer__len, sb_pointer__gap, sb_pointer__buf};
  struct ty_sb* sb = &sb_pointer;
  int len = input_json["len"];
  clock_t begin = clock();
  ty_sb_lskip(sb, len);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sb, len);
}