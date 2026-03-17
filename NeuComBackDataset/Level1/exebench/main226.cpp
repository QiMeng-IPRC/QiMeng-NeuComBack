#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ VmathVector4 ;

/* Variables and functions */
extern "C" { void vmathV4Copy( VmathVector4 *result, const VmathVector4 *vec );
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

void write_output(TYPE_1__* result, TYPE_1__* vec) {
  json output_json;
  TYPE_1__ output_temp_1 = *result;
  json output_temp_2;

  output_temp_2["w"] = output_temp_1.w;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["result"] = output_temp_2;
  TYPE_1__ output_temp_3 = *vec;
  json output_temp_4;

  output_temp_4["w"] = output_temp_3.w;

  output_temp_4["z"] = output_temp_3.z;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["vec"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int result_pointer__w = input_json["result"]["w"];
  int result_pointer__z = input_json["result"]["z"];
  int result_pointer__y = input_json["result"]["y"];
  int result_pointer__x = input_json["result"]["x"];
  TYPE_1__ result_pointer = {result_pointer__w, result_pointer__z, result_pointer__y, result_pointer__x};
  TYPE_1__* result = &result_pointer;
  int vec_pointer__w = input_json["vec"]["w"];
  int vec_pointer__z = input_json["vec"]["z"];
  int vec_pointer__y = input_json["vec"]["y"];
  int vec_pointer__x = input_json["vec"]["x"];
  TYPE_1__ vec_pointer = {vec_pointer__w, vec_pointer__z, vec_pointer__y, vec_pointer__x};
  TYPE_1__* vec = &vec_pointer;
  clock_t begin = clock();
  vmathV4Copy(result, vec);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(result, vec);
}