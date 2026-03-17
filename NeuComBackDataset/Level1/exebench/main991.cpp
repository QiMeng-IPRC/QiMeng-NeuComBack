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
struct TYPE_5__ {scalar_t__ line_num; } ;
struct TYPE_6__ {TYPE_1__ _base; } ;
struct TYPE_7__ {TYPE_2__ _base; } ;
typedef  TYPE_3__ St_raise ;
typedef  int /*<<< orphan*/  Returncode ;

/* Variables and functions */
extern  int /*<<< orphan*/  OK ; 
extern "C" { Returncode St_raise_parse(St_raise* self);
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

void write_output(TYPE_3__* self, int returnv) {
  json output_json;
  TYPE_3__ output_temp_1 = *self;
  json output_temp_2;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["line_num"] = output_temp_1._base._base.line_num;
  output_temp_3["_base"] = output_temp_4;
  output_temp_2["_base"] = output_temp_3;
  output_json["self"] = output_temp_2;

  output_json["OK"] = OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int self_pointer___base___base__line_num = input_json["self"]["_base"]["_base"]["line_num"];
  TYPE_1__ self_pointer___base___base = {self_pointer___base___base__line_num};
  TYPE_2__ self_pointer___base = {self_pointer___base___base};
  TYPE_3__ self_pointer = {self_pointer___base};
  TYPE_3__* self = &self_pointer;
  OK = input_json["OK"];
  clock_t begin = clock();
  int returnv = St_raise_parse(self);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self, returnv);
}