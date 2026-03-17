#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float x; float y; float z; } ;
typedef  TYPE_1__ qh_vec3_t ;

/* Variables and functions */
extern "C" { float qh__vec3_dot(qh_vec3_t* v1, qh_vec3_t* v2);
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

void write_output(TYPE_1__* v1, TYPE_1__* v2, float returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *v1;
  json output_temp_2;

  output_temp_2["x"] = output_temp_1.x;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["z"] = output_temp_1.z;
  output_json["v1"] = output_temp_2;
  TYPE_1__ output_temp_3 = *v2;
  json output_temp_4;

  output_temp_4["x"] = output_temp_3.x;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["z"] = output_temp_3.z;
  output_json["v2"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float v1_pointer__x = input_json["v1"]["x"];
  float v1_pointer__y = input_json["v1"]["y"];
  float v1_pointer__z = input_json["v1"]["z"];
  TYPE_1__ v1_pointer = {v1_pointer__x, v1_pointer__y, v1_pointer__z};
  TYPE_1__* v1 = &v1_pointer;
  float v2_pointer__x = input_json["v2"]["x"];
  float v2_pointer__y = input_json["v2"]["y"];
  float v2_pointer__z = input_json["v2"]["z"];
  TYPE_1__ v2_pointer = {v2_pointer__x, v2_pointer__y, v2_pointer__z};
  TYPE_1__* v2 = &v2_pointer;
  clock_t begin = clock();
  float returnv = qh__vec3_dot(v1, v2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(v1, v2, returnv);
}