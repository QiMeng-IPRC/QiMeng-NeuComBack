#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ w; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ VmathQuat ;

/* Variables and functions */
extern "C" { void vmathQAdd( VmathQuat *result, const VmathQuat *quat0, const VmathQuat *quat1 );
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

void write_output(TYPE_1__* result, TYPE_1__* quat0, TYPE_1__* quat1) {
  json output_json;
  TYPE_1__ output_temp_1 = *result;
  json output_temp_2;

  output_temp_2["w"] = output_temp_1.w;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["result"] = output_temp_2;
  TYPE_1__ output_temp_3 = *quat0;
  json output_temp_4;

  output_temp_4["w"] = output_temp_3.w;

  output_temp_4["z"] = output_temp_3.z;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["quat0"] = output_temp_4;
  TYPE_1__ output_temp_5 = *quat1;
  json output_temp_6;

  output_temp_6["w"] = output_temp_5.w;

  output_temp_6["z"] = output_temp_5.z;

  output_temp_6["y"] = output_temp_5.y;

  output_temp_6["x"] = output_temp_5.x;
  output_json["quat1"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int result_pointer__w = input_json["result"]["w"];
  long int result_pointer__z = input_json["result"]["z"];
  long int result_pointer__y = input_json["result"]["y"];
  long int result_pointer__x = input_json["result"]["x"];
  TYPE_1__ result_pointer = {result_pointer__w, result_pointer__z, result_pointer__y, result_pointer__x};
  TYPE_1__* result = &result_pointer;
  long int quat0_pointer__w = input_json["quat0"]["w"];
  long int quat0_pointer__z = input_json["quat0"]["z"];
  long int quat0_pointer__y = input_json["quat0"]["y"];
  long int quat0_pointer__x = input_json["quat0"]["x"];
  TYPE_1__ quat0_pointer = {quat0_pointer__w, quat0_pointer__z, quat0_pointer__y, quat0_pointer__x};
  TYPE_1__* quat0 = &quat0_pointer;
  long int quat1_pointer__w = input_json["quat1"]["w"];
  long int quat1_pointer__z = input_json["quat1"]["z"];
  long int quat1_pointer__y = input_json["quat1"]["y"];
  long int quat1_pointer__x = input_json["quat1"]["x"];
  TYPE_1__ quat1_pointer = {quat1_pointer__w, quat1_pointer__z, quat1_pointer__y, quat1_pointer__x};
  TYPE_1__* quat1 = &quat1_pointer;
  clock_t begin = clock();
  vmathQAdd(result, quat0, quat1);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(result, quat0, quat1);
}