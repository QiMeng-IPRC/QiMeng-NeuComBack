#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int red; int grn; int blu; } ;
typedef  TYPE_1__ rgb_t ;

/* Variables and functions */
extern "C" { void color_ledAdjust(rgb_t * rgb);
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

void write_output(TYPE_1__* rgb) {
  json output_json;
  TYPE_1__ output_temp_1 = *rgb;
  json output_temp_2;

  output_temp_2["red"] = output_temp_1.red;

  output_temp_2["grn"] = output_temp_1.grn;

  output_temp_2["blu"] = output_temp_1.blu;
  output_json["rgb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rgb_pointer__red = input_json["rgb"]["red"];
  int rgb_pointer__grn = input_json["rgb"]["grn"];
  int rgb_pointer__blu = input_json["rgb"]["blu"];
  TYPE_1__ rgb_pointer = {rgb_pointer__red, rgb_pointer__grn, rgb_pointer__blu};
  TYPE_1__* rgb = &rgb_pointer;
  clock_t begin = clock();
  color_ledAdjust(rgb);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rgb);
}