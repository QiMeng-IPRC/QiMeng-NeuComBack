#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ maxx; scalar_t__ minx; scalar_t__ maxy; scalar_t__ miny; } ;
typedef  TYPE_1__ rectObj ;

/* Variables and functions */
extern "C" { int msRectIntersect( rectObj *a, const rectObj *b );
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

void write_output(TYPE_1__* a, TYPE_1__* b, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["maxx"] = output_temp_1.maxx;

  output_temp_2["minx"] = output_temp_1.minx;

  output_temp_2["maxy"] = output_temp_1.maxy;

  output_temp_2["miny"] = output_temp_1.miny;
  output_json["a"] = output_temp_2;
  TYPE_1__ output_temp_3 = *b;
  json output_temp_4;

  output_temp_4["maxx"] = output_temp_3.maxx;

  output_temp_4["minx"] = output_temp_3.minx;

  output_temp_4["maxy"] = output_temp_3.maxy;

  output_temp_4["miny"] = output_temp_3.miny;
  output_json["b"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int a_pointer__maxx = input_json["a"]["maxx"];
  long int a_pointer__minx = input_json["a"]["minx"];
  long int a_pointer__maxy = input_json["a"]["maxy"];
  long int a_pointer__miny = input_json["a"]["miny"];
  TYPE_1__ a_pointer = {a_pointer__maxx, a_pointer__minx, a_pointer__maxy, a_pointer__miny};
  TYPE_1__* a = &a_pointer;
  long int b_pointer__maxx = input_json["b"]["maxx"];
  long int b_pointer__minx = input_json["b"]["minx"];
  long int b_pointer__maxy = input_json["b"]["maxy"];
  long int b_pointer__miny = input_json["b"]["miny"];
  TYPE_1__ b_pointer = {b_pointer__maxx, b_pointer__minx, b_pointer__maxy, b_pointer__miny};
  TYPE_1__* b = &b_pointer;
  clock_t begin = clock();
  int returnv = msRectIntersect(a, b);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b, returnv);
}