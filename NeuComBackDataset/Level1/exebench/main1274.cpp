#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int w; int h; } ;
typedef  TYPE_1__ Coord ;

/* Variables and functions */
extern "C" { void setCoord(Coord *c, int w, int h);
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

void write_output(TYPE_1__* c, int w, int h) {
  json output_json;
  TYPE_1__ output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["w"] = output_temp_1.w;

  output_temp_2["h"] = output_temp_1.h;
  output_json["c"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int c_pointer__w = input_json["c"]["w"];
  int c_pointer__h = input_json["c"]["h"];
  TYPE_1__ c_pointer = {c_pointer__w, c_pointer__h};
  TYPE_1__* c = &c_pointer;
  int w = input_json["w"];
  int h = input_json["h"];
  clock_t begin = clock();
  setCoord(c, w, h);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c, w, h);
}