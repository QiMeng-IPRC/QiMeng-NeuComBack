#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int real; int imag; } ;
struct TYPE_8__ {int real; int imag; } ;
struct TYPE_7__ {int real; int imag; } ;
struct TYPE_10__ {int m00im; int m11im; int m22im; TYPE_3__ m12; TYPE_2__ m02; TYPE_1__ m01; } ;
typedef  TYPE_4__ fanti_hermitmat ;
typedef  int Real ;

/* Variables and functions */
extern "C" { void scalar_mult_sum_antiH(fanti_hermitmat *b, Real s, fanti_hermitmat *c);
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

void write_output(TYPE_4__* b, int s, TYPE_4__* c) {
  json output_json;
  TYPE_4__ output_temp_1 = *b;
  json output_temp_2;

  output_temp_2["m00im"] = output_temp_1.m00im;

  output_temp_2["m11im"] = output_temp_1.m11im;

  output_temp_2["m22im"] = output_temp_1.m22im;
  json output_temp_3;

  output_temp_3["real"] = output_temp_1.m12.real;

  output_temp_3["imag"] = output_temp_1.m12.imag;
  output_temp_2["m12"] = output_temp_3;
  json output_temp_4;

  output_temp_4["real"] = output_temp_1.m02.real;

  output_temp_4["imag"] = output_temp_1.m02.imag;
  output_temp_2["m02"] = output_temp_4;
  json output_temp_5;

  output_temp_5["real"] = output_temp_1.m01.real;

  output_temp_5["imag"] = output_temp_1.m01.imag;
  output_temp_2["m01"] = output_temp_5;
  output_json["b"] = output_temp_2;
  TYPE_4__ output_temp_6 = *c;
  json output_temp_7;

  output_temp_7["m00im"] = output_temp_6.m00im;

  output_temp_7["m11im"] = output_temp_6.m11im;

  output_temp_7["m22im"] = output_temp_6.m22im;
  json output_temp_8;

  output_temp_8["real"] = output_temp_6.m12.real;

  output_temp_8["imag"] = output_temp_6.m12.imag;
  output_temp_7["m12"] = output_temp_8;
  json output_temp_9;

  output_temp_9["real"] = output_temp_6.m02.real;

  output_temp_9["imag"] = output_temp_6.m02.imag;
  output_temp_7["m02"] = output_temp_9;
  json output_temp_10;

  output_temp_10["real"] = output_temp_6.m01.real;

  output_temp_10["imag"] = output_temp_6.m01.imag;
  output_temp_7["m01"] = output_temp_10;
  output_json["c"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int b_pointer__m00im = input_json["b"]["m00im"];
  int b_pointer__m11im = input_json["b"]["m11im"];
  int b_pointer__m22im = input_json["b"]["m22im"];
  int b_pointer__m12__real = input_json["b"]["m12"]["real"];
  int b_pointer__m12__imag = input_json["b"]["m12"]["imag"];
  TYPE_3__ b_pointer__m12 = {b_pointer__m12__real, b_pointer__m12__imag};
  int b_pointer__m02__real = input_json["b"]["m02"]["real"];
  int b_pointer__m02__imag = input_json["b"]["m02"]["imag"];
  TYPE_2__ b_pointer__m02 = {b_pointer__m02__real, b_pointer__m02__imag};
  int b_pointer__m01__real = input_json["b"]["m01"]["real"];
  int b_pointer__m01__imag = input_json["b"]["m01"]["imag"];
  TYPE_1__ b_pointer__m01 = {b_pointer__m01__real, b_pointer__m01__imag};
  TYPE_4__ b_pointer = {b_pointer__m00im, b_pointer__m11im, b_pointer__m22im, b_pointer__m12, b_pointer__m02, b_pointer__m01};
  TYPE_4__* b = &b_pointer;
  int s = input_json["s"];
  int c_pointer__m00im = input_json["c"]["m00im"];
  int c_pointer__m11im = input_json["c"]["m11im"];
  int c_pointer__m22im = input_json["c"]["m22im"];
  int c_pointer__m12__real = input_json["c"]["m12"]["real"];
  int c_pointer__m12__imag = input_json["c"]["m12"]["imag"];
  TYPE_3__ c_pointer__m12 = {c_pointer__m12__real, c_pointer__m12__imag};
  int c_pointer__m02__real = input_json["c"]["m02"]["real"];
  int c_pointer__m02__imag = input_json["c"]["m02"]["imag"];
  TYPE_2__ c_pointer__m02 = {c_pointer__m02__real, c_pointer__m02__imag};
  int c_pointer__m01__real = input_json["c"]["m01"]["real"];
  int c_pointer__m01__imag = input_json["c"]["m01"]["imag"];
  TYPE_1__ c_pointer__m01 = {c_pointer__m01__real, c_pointer__m01__imag};
  TYPE_4__ c_pointer = {c_pointer__m00im, c_pointer__m11im, c_pointer__m22im, c_pointer__m12, c_pointer__m02, c_pointer__m01};
  TYPE_4__* c = &c_pointer;
  clock_t begin = clock();
  scalar_mult_sum_antiH(b, s, c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(b, s, c);
}