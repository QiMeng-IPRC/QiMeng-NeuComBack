#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
typedef  TYPE_1__ ArtDRect ;

/* Variables and functions */
extern "C" { void art_drect_intersect (ArtDRect *dest, const ArtDRect *src1, const ArtDRect *src2);
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

void write_output(TYPE_1__* dest, TYPE_1__* src1, TYPE_1__* src2) {
  json output_json;
  TYPE_1__ output_temp_1 = *dest;
  json output_temp_2;

  output_temp_2["x0"] = output_temp_1.x0;

  output_temp_2["y0"] = output_temp_1.y0;

  output_temp_2["x1"] = output_temp_1.x1;

  output_temp_2["y1"] = output_temp_1.y1;
  output_json["dest"] = output_temp_2;
  TYPE_1__ output_temp_3 = *src1;
  json output_temp_4;

  output_temp_4["x0"] = output_temp_3.x0;

  output_temp_4["y0"] = output_temp_3.y0;

  output_temp_4["x1"] = output_temp_3.x1;

  output_temp_4["y1"] = output_temp_3.y1;
  output_json["src1"] = output_temp_4;
  TYPE_1__ output_temp_5 = *src2;
  json output_temp_6;

  output_temp_6["x0"] = output_temp_5.x0;

  output_temp_6["y0"] = output_temp_5.y0;

  output_temp_6["x1"] = output_temp_5.x1;

  output_temp_6["y1"] = output_temp_5.y1;
  output_json["src2"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int dest_pointer__x0 = input_json["dest"]["x0"];
  long int dest_pointer__y0 = input_json["dest"]["y0"];
  long int dest_pointer__x1 = input_json["dest"]["x1"];
  long int dest_pointer__y1 = input_json["dest"]["y1"];
  TYPE_1__ dest_pointer = {dest_pointer__x0, dest_pointer__y0, dest_pointer__x1, dest_pointer__y1};
  TYPE_1__* dest = &dest_pointer;
  long int src1_pointer__x0 = input_json["src1"]["x0"];
  long int src1_pointer__y0 = input_json["src1"]["y0"];
  long int src1_pointer__x1 = input_json["src1"]["x1"];
  long int src1_pointer__y1 = input_json["src1"]["y1"];
  TYPE_1__ src1_pointer = {src1_pointer__x0, src1_pointer__y0, src1_pointer__x1, src1_pointer__y1};
  TYPE_1__* src1 = &src1_pointer;
  long int src2_pointer__x0 = input_json["src2"]["x0"];
  long int src2_pointer__y0 = input_json["src2"]["y0"];
  long int src2_pointer__x1 = input_json["src2"]["x1"];
  long int src2_pointer__y1 = input_json["src2"]["y1"];
  TYPE_1__ src2_pointer = {src2_pointer__x0, src2_pointer__y0, src2_pointer__x1, src2_pointer__y1};
  TYPE_1__* src2 = &src2_pointer;
  clock_t begin = clock();
  art_drect_intersect(dest, src1, src2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dest, src1, src2);
}