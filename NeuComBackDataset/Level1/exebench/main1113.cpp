#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float xy; float yx; float xz; float zx; float xw; float wx; float yz; float zy; float yw; float wy; float zw; float wz; } ;
typedef  TYPE_1__ egMat4 ;

/* Variables and functions */
extern "C" { void egMat4Transpose(egMat4 * a);
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

void write_output(TYPE_1__* a) {
  json output_json;
  TYPE_1__ output_temp_1 = *a;
  json output_temp_2;

  output_temp_2["xy"] = output_temp_1.xy;

  output_temp_2["yx"] = output_temp_1.yx;

  output_temp_2["xz"] = output_temp_1.xz;

  output_temp_2["zx"] = output_temp_1.zx;

  output_temp_2["xw"] = output_temp_1.xw;

  output_temp_2["wx"] = output_temp_1.wx;

  output_temp_2["yz"] = output_temp_1.yz;

  output_temp_2["zy"] = output_temp_1.zy;

  output_temp_2["yw"] = output_temp_1.yw;

  output_temp_2["wy"] = output_temp_1.wy;

  output_temp_2["zw"] = output_temp_1.zw;

  output_temp_2["wz"] = output_temp_1.wz;
  output_json["a"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float a_pointer__xy = input_json["a"]["xy"];
  float a_pointer__yx = input_json["a"]["yx"];
  float a_pointer__xz = input_json["a"]["xz"];
  float a_pointer__zx = input_json["a"]["zx"];
  float a_pointer__xw = input_json["a"]["xw"];
  float a_pointer__wx = input_json["a"]["wx"];
  float a_pointer__yz = input_json["a"]["yz"];
  float a_pointer__zy = input_json["a"]["zy"];
  float a_pointer__yw = input_json["a"]["yw"];
  float a_pointer__wy = input_json["a"]["wy"];
  float a_pointer__zw = input_json["a"]["zw"];
  float a_pointer__wz = input_json["a"]["wz"];
  TYPE_1__ a_pointer = {a_pointer__xy, a_pointer__yx, a_pointer__xz, a_pointer__zx, a_pointer__xw, a_pointer__wx, a_pointer__yz, a_pointer__zy, a_pointer__yw, a_pointer__wy, a_pointer__zw, a_pointer__wz};
  TYPE_1__* a = &a_pointer;
  clock_t begin = clock();
  egMat4Transpose(a);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a);
}