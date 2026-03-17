#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ base; scalar_t__ delta; } ;
typedef  TYPE_2__ dx_shift ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_8__ {scalar_t__ annotations_off; TYPE_1__ meta; } ;
typedef  TYPE_3__ DexFieldAnnotation ;

/* Variables and functions */
extern "C" { void dxo_fieldannotation(DexFieldAnnotation* obj, dx_shift* shift);
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

void write_output(TYPE_3__* obj, TYPE_2__* shift) {
  json output_json;
  TYPE_3__ output_temp_1 = *obj;
  json output_temp_2;

  output_temp_2["annotations_off"] = output_temp_1.annotations_off;
  json output_temp_3;

  output_temp_3["offset"] = output_temp_1.meta.offset;
  output_temp_2["meta"] = output_temp_3;
  output_json["obj"] = output_temp_2;
  TYPE_2__ output_temp_4 = *shift;
  json output_temp_5;

  output_temp_5["base"] = output_temp_4.base;

  output_temp_5["delta"] = output_temp_4.delta;
  output_json["shift"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int obj_pointer__annotations_off = input_json["obj"]["annotations_off"];
  long int obj_pointer__meta__offset = input_json["obj"]["meta"]["offset"];
  TYPE_1__ obj_pointer__meta = {obj_pointer__meta__offset};
  TYPE_3__ obj_pointer = {obj_pointer__annotations_off, obj_pointer__meta};
  TYPE_3__* obj = &obj_pointer;
  long int shift_pointer__base = input_json["shift"]["base"];
  long int shift_pointer__delta = input_json["shift"]["delta"];
  TYPE_2__ shift_pointer = {shift_pointer__base, shift_pointer__delta};
  TYPE_2__* shift = &shift_pointer;
  clock_t begin = clock();
  dxo_fieldannotation(obj, shift);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(obj, shift);
}