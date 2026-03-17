#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double a; double b; double c; } ;
struct TYPE_5__ {double y; double x; } ;
typedef  TYPE_1__ Enesim_Point ;
typedef  TYPE_2__ Enesim_Line ;

/* Variables and functions */
extern "C" { void enesim_line_direction_from(Enesim_Line *l, Enesim_Point *p0, double vx, double vy);
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

void write_output(TYPE_2__* l, TYPE_1__* p0, double vx, double vy) {
  json output_json;
  TYPE_2__ output_temp_1 = *l;
  json output_temp_2;

  output_temp_2["a"] = output_temp_1.a;

  output_temp_2["b"] = output_temp_1.b;

  output_temp_2["c"] = output_temp_1.c;
  output_json["l"] = output_temp_2;
  TYPE_1__ output_temp_3 = *p0;
  json output_temp_4;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["p0"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double l_pointer__a = input_json["l"]["a"];
  double l_pointer__b = input_json["l"]["b"];
  double l_pointer__c = input_json["l"]["c"];
  TYPE_2__ l_pointer = {l_pointer__a, l_pointer__b, l_pointer__c};
  TYPE_2__* l = &l_pointer;
  double p0_pointer__y = input_json["p0"]["y"];
  double p0_pointer__x = input_json["p0"]["x"];
  TYPE_1__ p0_pointer = {p0_pointer__y, p0_pointer__x};
  TYPE_1__* p0 = &p0_pointer;
  double vx = input_json["vx"];
  double vy = input_json["vy"];
  clock_t begin = clock();
  enesim_line_direction_from(l, p0, vx, vy);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(l, p0, vx, vy);
}