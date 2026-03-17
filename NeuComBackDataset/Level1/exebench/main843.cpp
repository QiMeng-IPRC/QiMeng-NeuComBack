#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int a; int b; int c; int d; } ;
typedef  TYPE_1__ Elf32_Word ;

/* Variables and functions */
extern "C" { void elf32_setword(Elf32_Word *val, int v);
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

void write_output(TYPE_1__* val, int v) {
  json output_json;
  TYPE_1__ output_temp_1 = *val;
  json output_temp_2;

  output_temp_2["a"] = output_temp_1.a;

  output_temp_2["b"] = output_temp_1.b;

  output_temp_2["c"] = output_temp_1.c;

  output_temp_2["d"] = output_temp_1.d;
  output_json["val"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int val_pointer__a = input_json["val"]["a"];
  int val_pointer__b = input_json["val"]["b"];
  int val_pointer__c = input_json["val"]["c"];
  int val_pointer__d = input_json["val"]["d"];
  TYPE_1__ val_pointer = {val_pointer__a, val_pointer__b, val_pointer__c, val_pointer__d};
  TYPE_1__* val = &val_pointer;
  int v = input_json["v"];
  clock_t begin = clock();
  elf32_setword(val, v);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(val, v);
}