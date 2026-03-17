#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double ar_expg; scalar_t__ ar_ling; } ;
typedef  TYPE_1__ m_array ;

/* Variables and functions */
extern "C" { int m_array_grow_exp(m_array* arr, double expg);
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

void write_output(TYPE_1__* arr, double expg, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *arr;
  json output_temp_2;

  output_temp_2["ar_expg"] = output_temp_1.ar_expg;

  output_temp_2["ar_ling"] = output_temp_1.ar_ling;
  output_json["arr"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double arr_pointer__ar_expg = input_json["arr"]["ar_expg"];
  long int arr_pointer__ar_ling = input_json["arr"]["ar_ling"];
  TYPE_1__ arr_pointer = {arr_pointer__ar_expg, arr_pointer__ar_ling};
  TYPE_1__* arr = &arr_pointer;
  double expg = input_json["expg"];
  clock_t begin = clock();
  int returnv = m_array_grow_exp(arr, expg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(arr, expg, returnv);
}