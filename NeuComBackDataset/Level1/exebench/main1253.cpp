#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int alloc; scalar_t__ num; } ;
typedef  TYPE_1__ VEC_sudirript_p_base ;

/* Variables and functions */
extern "C" { void VEC_sudirript_p_base_embedded_init (VEC_sudirript_p_base *vec_, int alloc_);
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

void write_output(TYPE_1__* vec_, int alloc_) {
  json output_json;
  TYPE_1__ output_temp_1 = *vec_;
  json output_temp_2;

  output_temp_2["alloc"] = output_temp_1.alloc;

  output_temp_2["num"] = output_temp_1.num;
  output_json["vec_"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int vec__pointer__alloc = input_json["vec_"]["alloc"];
  long int vec__pointer__num = input_json["vec_"]["num"];
  TYPE_1__ vec__pointer = {vec__pointer__alloc, vec__pointer__num};
  TYPE_1__* vec_ = &vec__pointer;
  int alloc_ = input_json["alloc_"];
  clock_t begin = clock();
  VEC_sudirript_p_base_embedded_init(vec_, alloc_);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(vec_, alloc_);
}