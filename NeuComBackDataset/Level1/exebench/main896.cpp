#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ w; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ Quaternion ;

/* Variables and functions */
extern "C" { void SubstractQuaternion(const Quaternion *src, Quaternion *tgt);
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

void write_output(TYPE_1__* src, TYPE_1__* tgt) {
  json output_json;
  TYPE_1__ output_temp_1 = *src;
  json output_temp_2;

  output_temp_2["w"] = output_temp_1.w;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["src"] = output_temp_2;
  TYPE_1__ output_temp_3 = *tgt;
  json output_temp_4;

  output_temp_4["w"] = output_temp_3.w;

  output_temp_4["z"] = output_temp_3.z;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["tgt"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int src_pointer__w = input_json["src"]["w"];
  long int src_pointer__z = input_json["src"]["z"];
  long int src_pointer__y = input_json["src"]["y"];
  long int src_pointer__x = input_json["src"]["x"];
  TYPE_1__ src_pointer = {src_pointer__w, src_pointer__z, src_pointer__y, src_pointer__x};
  TYPE_1__* src = &src_pointer;
  long int tgt_pointer__w = input_json["tgt"]["w"];
  long int tgt_pointer__z = input_json["tgt"]["z"];
  long int tgt_pointer__y = input_json["tgt"]["y"];
  long int tgt_pointer__x = input_json["tgt"]["x"];
  TYPE_1__ tgt_pointer = {tgt_pointer__w, tgt_pointer__z, tgt_pointer__y, tgt_pointer__x};
  TYPE_1__* tgt = &tgt_pointer;
  clock_t begin = clock();
  SubstractQuaternion(src, tgt);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(src, tgt);
}