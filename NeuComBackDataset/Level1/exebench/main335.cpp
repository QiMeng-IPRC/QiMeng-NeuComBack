#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct Vector3f {float x; float y; float z; } ;

/* Variables and functions */
extern "C" { float dot (const struct Vector3f *sx, const struct Vector3f *dx);
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

void write_output(struct Vector3f* sx, struct Vector3f* dx, float returnv) {
  json output_json;
  struct Vector3f output_temp_1 = *sx;
  json output_temp_2;

  output_temp_2["x"] = output_temp_1.x;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["z"] = output_temp_1.z;
  output_json["sx"] = output_temp_2;
  struct Vector3f output_temp_3 = *dx;
  json output_temp_4;

  output_temp_4["x"] = output_temp_3.x;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["z"] = output_temp_3.z;
  output_json["dx"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float sx_pointer__x = input_json["sx"]["x"];
  float sx_pointer__y = input_json["sx"]["y"];
  float sx_pointer__z = input_json["sx"]["z"];
  struct Vector3f sx_pointer = {sx_pointer__x, sx_pointer__y, sx_pointer__z};
  struct Vector3f* sx = &sx_pointer;
  float dx_pointer__x = input_json["dx"]["x"];
  float dx_pointer__y = input_json["dx"]["y"];
  float dx_pointer__z = input_json["dx"]["z"];
  struct Vector3f dx_pointer = {dx_pointer__x, dx_pointer__y, dx_pointer__z};
  struct Vector3f* dx = &dx_pointer;
  clock_t begin = clock();
  float returnv = dot(sx, dx);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sx, dx, returnv);
}