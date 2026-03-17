#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int m00; int m01; int m02; int m10; int m11; int m12; int m20; int m21; int m22; } ;
struct TYPE_5__ {int x; int y; int z; } ;
typedef  TYPE_1__ LIVec3 ;
typedef  TYPE_2__ LIMat4 ;

/* Variables and functions */
extern "C" { void LIScaleMat4 (LIMat4 * m, LIVec3 v);
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

void write_output(TYPE_2__* m, TYPE_1__ v) {
  json output_json;
  TYPE_2__ output_temp_1 = *m;
  json output_temp_2;

  output_temp_2["m00"] = output_temp_1.m00;

  output_temp_2["m01"] = output_temp_1.m01;

  output_temp_2["m02"] = output_temp_1.m02;

  output_temp_2["m10"] = output_temp_1.m10;

  output_temp_2["m11"] = output_temp_1.m11;

  output_temp_2["m12"] = output_temp_1.m12;

  output_temp_2["m20"] = output_temp_1.m20;

  output_temp_2["m21"] = output_temp_1.m21;

  output_temp_2["m22"] = output_temp_1.m22;
  output_json["m"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int m_pointer__m00 = input_json["m"]["m00"];
  int m_pointer__m01 = input_json["m"]["m01"];
  int m_pointer__m02 = input_json["m"]["m02"];
  int m_pointer__m10 = input_json["m"]["m10"];
  int m_pointer__m11 = input_json["m"]["m11"];
  int m_pointer__m12 = input_json["m"]["m12"];
  int m_pointer__m20 = input_json["m"]["m20"];
  int m_pointer__m21 = input_json["m"]["m21"];
  int m_pointer__m22 = input_json["m"]["m22"];
  TYPE_2__ m_pointer = {m_pointer__m00, m_pointer__m01, m_pointer__m02, m_pointer__m10, m_pointer__m11, m_pointer__m12, m_pointer__m20, m_pointer__m21, m_pointer__m22};
  TYPE_2__* m = &m_pointer;
  int v__x = input_json["v"]["x"];
  int v__y = input_json["v"]["y"];
  int v__z = input_json["v"]["z"];
  TYPE_1__ v = {v__x, v__y, v__z};
  clock_t begin = clock();
  LIScaleMat4(m, v);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(m, v);
}