#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int add; int mul; int fma; int other; } ;
typedef  TYPE_1__ opcnt ;
typedef  int INT ;

/* Variables and functions */
extern "C" { void fftwf_ops_madd(INT m, const opcnt *a, const opcnt *b, opcnt *dst);
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

void write_output(int m, TYPE_1__* a, TYPE_1__* b, TYPE_1__* dst) {
  json output_json;
  TYPE_1__ output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["add"] = output_temp_1.add;

  output_temp_2["mul"] = output_temp_1.mul;

  output_temp_2["fma"] = output_temp_1.fma;

  output_temp_2["other"] = output_temp_1.other;
  output_json["a"] = output_temp_2;
  TYPE_1__ output_temp_3 = *b;
  json output_temp_4;

  output_temp_4["add"] = output_temp_3.add;

  output_temp_4["mul"] = output_temp_3.mul;

  output_temp_4["fma"] = output_temp_3.fma;

  output_temp_4["other"] = output_temp_3.other;
  output_json["b"] = output_temp_4;
  TYPE_1__ output_temp_5 = *dst;
  json output_temp_6;

  output_temp_6["add"] = output_temp_5.add;

  output_temp_6["mul"] = output_temp_5.mul;

  output_temp_6["fma"] = output_temp_5.fma;

  output_temp_6["other"] = output_temp_5.other;
  output_json["dst"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int m = input_json["m"];
  int a_pointer__add = input_json["a"]["add"];
  int a_pointer__mul = input_json["a"]["mul"];
  int a_pointer__fma = input_json["a"]["fma"];
  int a_pointer__other = input_json["a"]["other"];
  TYPE_1__ a_pointer = {a_pointer__add, a_pointer__mul, a_pointer__fma, a_pointer__other};
  TYPE_1__* a = &a_pointer;
  int b_pointer__add = input_json["b"]["add"];
  int b_pointer__mul = input_json["b"]["mul"];
  int b_pointer__fma = input_json["b"]["fma"];
  int b_pointer__other = input_json["b"]["other"];
  TYPE_1__ b_pointer = {b_pointer__add, b_pointer__mul, b_pointer__fma, b_pointer__other};
  TYPE_1__* b = &b_pointer;
  int dst_pointer__add = input_json["dst"]["add"];
  int dst_pointer__mul = input_json["dst"]["mul"];
  int dst_pointer__fma = input_json["dst"]["fma"];
  int dst_pointer__other = input_json["dst"]["other"];
  TYPE_1__ dst_pointer = {dst_pointer__add, dst_pointer__mul, dst_pointer__fma, dst_pointer__other};
  TYPE_1__* dst = &dst_pointer;
  clock_t begin = clock();
  fftwf_ops_madd(m, a, b, dst);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(m, a, b, dst);
}