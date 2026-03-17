#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int w; int x; int y; int z; } ;
typedef  TYPE_1__ quat_t ;

/* Variables and functions */
extern "C" { void qtMul(const quat_t *qL,const quat_t *qR,quat_t *qq);
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

void write_output(TYPE_1__* qL, TYPE_1__* qR, TYPE_1__* qq) {
  json output_json;
  TYPE_1__ output_temp_1 = *qL;
  json output_temp_2;

  output_temp_2["w"] = output_temp_1.w;

  output_temp_2["x"] = output_temp_1.x;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["z"] = output_temp_1.z;
  output_json["qL"] = output_temp_2;
  TYPE_1__ output_temp_3 = *qR;
  json output_temp_4;

  output_temp_4["w"] = output_temp_3.w;

  output_temp_4["x"] = output_temp_3.x;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["z"] = output_temp_3.z;
  output_json["qR"] = output_temp_4;
  TYPE_1__ output_temp_5 = *qq;
  json output_temp_6;

  output_temp_6["w"] = output_temp_5.w;

  output_temp_6["x"] = output_temp_5.x;

  output_temp_6["y"] = output_temp_5.y;

  output_temp_6["z"] = output_temp_5.z;
  output_json["qq"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int qL_pointer__w = input_json["qL"]["w"];
  int qL_pointer__x = input_json["qL"]["x"];
  int qL_pointer__y = input_json["qL"]["y"];
  int qL_pointer__z = input_json["qL"]["z"];
  TYPE_1__ qL_pointer = {qL_pointer__w, qL_pointer__x, qL_pointer__y, qL_pointer__z};
  TYPE_1__* qL = &qL_pointer;
  int qR_pointer__w = input_json["qR"]["w"];
  int qR_pointer__x = input_json["qR"]["x"];
  int qR_pointer__y = input_json["qR"]["y"];
  int qR_pointer__z = input_json["qR"]["z"];
  TYPE_1__ qR_pointer = {qR_pointer__w, qR_pointer__x, qR_pointer__y, qR_pointer__z};
  TYPE_1__* qR = &qR_pointer;
  int qq_pointer__w = input_json["qq"]["w"];
  int qq_pointer__x = input_json["qq"]["x"];
  int qq_pointer__y = input_json["qq"]["y"];
  int qq_pointer__z = input_json["qq"]["z"];
  TYPE_1__ qq_pointer = {qq_pointer__w, qq_pointer__x, qq_pointer__y, qq_pointer__z};
  TYPE_1__* qq = &qq_pointer;
  clock_t begin = clock();
  qtMul(qL, qR, qq);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(qL, qR, qq);
}