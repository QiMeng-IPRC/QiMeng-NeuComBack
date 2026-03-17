#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct bar {char g; scalar_t__ e; scalar_t__ d; scalar_t__ c; scalar_t__ b; scalar_t__ a; } ;

/* Variables and functions */
extern "C" { void foo1 (struct bar *p, char tmp);
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

void write_output(struct bar* p, char tmp) {
  json output_json;
  struct bar output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["g"] = output_temp_1.g;

  output_temp_2["e"] = output_temp_1.e;

  output_temp_2["d"] = output_temp_1.d;

  output_temp_2["c"] = output_temp_1.c;

  output_temp_2["b"] = output_temp_1.b;

  output_temp_2["a"] = output_temp_1.a;
  output_json["p"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char p_pointer__g = input_json["p"]["g"].get<char>();
  long int p_pointer__e = input_json["p"]["e"];
  long int p_pointer__d = input_json["p"]["d"];
  long int p_pointer__c = input_json["p"]["c"];
  long int p_pointer__b = input_json["p"]["b"];
  long int p_pointer__a = input_json["p"]["a"];
  struct bar p_pointer = {p_pointer__g, p_pointer__e, p_pointer__d, p_pointer__c, p_pointer__b, p_pointer__a};
  struct bar* p = &p_pointer;
  char tmp = input_json["tmp"].get<char>();
  clock_t begin = clock();
  foo1(p, tmp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, tmp);
}