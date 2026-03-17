#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fX; int fY; int fZ; float fW; } ;
struct TYPE_6__ {int fX; int fY; int fZ; } ;
typedef  TYPE_1__ BLVec3 ;
typedef  TYPE_2__ BLQuaternion ;

/* Variables and functions */
extern "C" { BLVec3 blQuatTransform(const BLQuaternion* _Q, const BLVec3* _Vec);
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

void write_output(TYPE_2__* _Q, TYPE_1__* _Vec, TYPE_1__ returnv) {
  json output_json;
  TYPE_2__ output_temp_1 = *_Q;
  json output_temp_2;

  output_temp_2["fX"] = output_temp_1.fX;

  output_temp_2["fY"] = output_temp_1.fY;

  output_temp_2["fZ"] = output_temp_1.fZ;

  output_temp_2["fW"] = output_temp_1.fW;
  output_json["_Q"] = output_temp_2;
  TYPE_1__ output_temp_3 = *_Vec;
  json output_temp_4;

  output_temp_4["fX"] = output_temp_3.fX;

  output_temp_4["fY"] = output_temp_3.fY;

  output_temp_4["fZ"] = output_temp_3.fZ;
  output_json["_Vec"] = output_temp_4;
  json output_temp_5;

  output_temp_5["fX"] = returnv.fX;

  output_temp_5["fY"] = returnv.fY;

  output_temp_5["fZ"] = returnv.fZ;
  output_json["returnv"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int _Q_pointer__fX = input_json["_Q"]["fX"];
  int _Q_pointer__fY = input_json["_Q"]["fY"];
  int _Q_pointer__fZ = input_json["_Q"]["fZ"];
  float _Q_pointer__fW = input_json["_Q"]["fW"];
  TYPE_2__ _Q_pointer = {_Q_pointer__fX, _Q_pointer__fY, _Q_pointer__fZ, _Q_pointer__fW};
  TYPE_2__* _Q = &_Q_pointer;
  int _Vec_pointer__fX = input_json["_Vec"]["fX"];
  int _Vec_pointer__fY = input_json["_Vec"]["fY"];
  int _Vec_pointer__fZ = input_json["_Vec"]["fZ"];
  TYPE_1__ _Vec_pointer = {_Vec_pointer__fX, _Vec_pointer__fY, _Vec_pointer__fZ};
  TYPE_1__* _Vec = &_Vec_pointer;
  clock_t begin = clock();
  TYPE_1__ returnv = blQuatTransform(_Q, _Vec);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(_Q, _Vec, returnv);
}