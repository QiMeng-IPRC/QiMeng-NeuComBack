#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float r1X; float r2X; float r3X; float r1Y; float r2Y; float r3Y; float r1Z; float r2Z; float r3Z; } ;
typedef  TYPE_1__ trfm3D ;
struct TYPE_6__ {float x; float y; float z; float w; } ;
typedef  TYPE_2__ Quaternion ;

/* Variables and functions */
extern "C" { void QuaternionToTrfm3D(const Quaternion *Q, trfm3D *T);
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

void write_output(TYPE_2__* Q, TYPE_1__* T) {
  json output_json;
  TYPE_2__ output_temp_1 = *Q;
  json output_temp_2;

  output_temp_2["x"] = output_temp_1.x;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["w"] = output_temp_1.w;
  output_json["Q"] = output_temp_2;
  TYPE_1__ output_temp_3 = *T;
  json output_temp_4;

  output_temp_4["r1X"] = output_temp_3.r1X;

  output_temp_4["r2X"] = output_temp_3.r2X;

  output_temp_4["r3X"] = output_temp_3.r3X;

  output_temp_4["r1Y"] = output_temp_3.r1Y;

  output_temp_4["r2Y"] = output_temp_3.r2Y;

  output_temp_4["r3Y"] = output_temp_3.r3Y;

  output_temp_4["r1Z"] = output_temp_3.r1Z;

  output_temp_4["r2Z"] = output_temp_3.r2Z;

  output_temp_4["r3Z"] = output_temp_3.r3Z;
  output_json["T"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float Q_pointer__x = input_json["Q"]["x"];
  float Q_pointer__y = input_json["Q"]["y"];
  float Q_pointer__z = input_json["Q"]["z"];
  float Q_pointer__w = input_json["Q"]["w"];
  TYPE_2__ Q_pointer = {Q_pointer__x, Q_pointer__y, Q_pointer__z, Q_pointer__w};
  TYPE_2__* Q = &Q_pointer;
  float T_pointer__r1X = input_json["T"]["r1X"];
  float T_pointer__r2X = input_json["T"]["r2X"];
  float T_pointer__r3X = input_json["T"]["r3X"];
  float T_pointer__r1Y = input_json["T"]["r1Y"];
  float T_pointer__r2Y = input_json["T"]["r2Y"];
  float T_pointer__r3Y = input_json["T"]["r3Y"];
  float T_pointer__r1Z = input_json["T"]["r1Z"];
  float T_pointer__r2Z = input_json["T"]["r2Z"];
  float T_pointer__r3Z = input_json["T"]["r3Z"];
  TYPE_1__ T_pointer = {T_pointer__r1X, T_pointer__r2X, T_pointer__r3X, T_pointer__r1Y, T_pointer__r2Y, T_pointer__r3Y, T_pointer__r1Z, T_pointer__r2Z, T_pointer__r3Z};
  TYPE_1__* T = &T_pointer;
  clock_t begin = clock();
  QuaternionToTrfm3D(Q, T);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(Q, T);
}