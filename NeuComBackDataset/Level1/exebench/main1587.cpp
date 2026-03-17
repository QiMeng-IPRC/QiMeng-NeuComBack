#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float Ly; int yd; int yc; } ;
typedef  TYPE_1__ Coords ;

/* Variables and functions */
extern "C" { float yl2yc(const Coords *c, float yl);
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

void write_output(TYPE_1__* c, float yl, float returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["Ly"] = output_temp_1.Ly;

  output_temp_2["yd"] = output_temp_1.yd;

  output_temp_2["yc"] = output_temp_1.yc;
  output_json["c"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float c_pointer__Ly = input_json["c"]["Ly"];
  int c_pointer__yd = input_json["c"]["yd"];
  int c_pointer__yc = input_json["c"]["yc"];
  TYPE_1__ c_pointer = {c_pointer__Ly, c_pointer__yd, c_pointer__yc};
  TYPE_1__* c = &c_pointer;
  float yl = input_json["yl"];
  clock_t begin = clock();
  float returnv = yl2yc(c, yl);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c, yl, returnv);
}