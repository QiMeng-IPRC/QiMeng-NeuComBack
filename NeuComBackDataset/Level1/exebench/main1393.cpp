#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double x; double y; double z; } ;
struct TYPE_5__ {double x; double y; double z; } ;
struct TYPE_7__ {TYPE_2__ c; TYPE_1__ b; } ;
typedef  TYPE_3__ matrix ;

/* Variables and functions */
extern "C" { void xrot(matrix *p, double ca, double sa);
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

void write_output(TYPE_3__* p, double ca, double sa) {
  json output_json;
  TYPE_3__ output_temp_1 = *p;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["x"] = output_temp_1.c.x;

  output_temp_3["y"] = output_temp_1.c.y;

  output_temp_3["z"] = output_temp_1.c.z;
  output_temp_2["c"] = output_temp_3;
  json output_temp_4;

  output_temp_4["x"] = output_temp_1.b.x;

  output_temp_4["y"] = output_temp_1.b.y;

  output_temp_4["z"] = output_temp_1.b.z;
  output_temp_2["b"] = output_temp_4;
  output_json["p"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double p_pointer__c__x = input_json["p"]["c"]["x"];
  double p_pointer__c__y = input_json["p"]["c"]["y"];
  double p_pointer__c__z = input_json["p"]["c"]["z"];
  TYPE_2__ p_pointer__c = {p_pointer__c__x, p_pointer__c__y, p_pointer__c__z};
  double p_pointer__b__x = input_json["p"]["b"]["x"];
  double p_pointer__b__y = input_json["p"]["b"]["y"];
  double p_pointer__b__z = input_json["p"]["b"]["z"];
  TYPE_1__ p_pointer__b = {p_pointer__b__x, p_pointer__b__y, p_pointer__b__z};
  TYPE_3__ p_pointer = {p_pointer__c, p_pointer__b};
  TYPE_3__* p = &p_pointer;
  double ca = input_json["ca"];
  double sa = input_json["sa"];
  clock_t begin = clock();
  xrot(p, ca, sa);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, ca, sa);
}