#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  m32; int /*<<< orphan*/  m23; int /*<<< orphan*/  m31; int /*<<< orphan*/  m13; int /*<<< orphan*/  m21; int /*<<< orphan*/  m12; int /*<<< orphan*/  m30; int /*<<< orphan*/  m03; int /*<<< orphan*/  m20; int /*<<< orphan*/  m02; int /*<<< orphan*/  m10; int /*<<< orphan*/  m01; } ;
typedef  TYPE_1__ matrix4f ;

/* Variables and functions */
extern "C" { void matrix4f_transpose(matrix4f *mat);
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

void write_output(TYPE_1__* mat) {
  json output_json;
  TYPE_1__ output_temp_1 = *mat;
  json output_temp_2;

  output_temp_2["m32"] = output_temp_1.m32;

  output_temp_2["m23"] = output_temp_1.m23;

  output_temp_2["m31"] = output_temp_1.m31;

  output_temp_2["m13"] = output_temp_1.m13;

  output_temp_2["m21"] = output_temp_1.m21;

  output_temp_2["m12"] = output_temp_1.m12;

  output_temp_2["m30"] = output_temp_1.m30;

  output_temp_2["m03"] = output_temp_1.m03;

  output_temp_2["m20"] = output_temp_1.m20;

  output_temp_2["m02"] = output_temp_1.m02;

  output_temp_2["m10"] = output_temp_1.m10;

  output_temp_2["m01"] = output_temp_1.m01;
  output_json["mat"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int mat_pointer__m32 = input_json["mat"]["m32"];
  int mat_pointer__m23 = input_json["mat"]["m23"];
  int mat_pointer__m31 = input_json["mat"]["m31"];
  int mat_pointer__m13 = input_json["mat"]["m13"];
  int mat_pointer__m21 = input_json["mat"]["m21"];
  int mat_pointer__m12 = input_json["mat"]["m12"];
  int mat_pointer__m30 = input_json["mat"]["m30"];
  int mat_pointer__m03 = input_json["mat"]["m03"];
  int mat_pointer__m20 = input_json["mat"]["m20"];
  int mat_pointer__m02 = input_json["mat"]["m02"];
  int mat_pointer__m10 = input_json["mat"]["m10"];
  int mat_pointer__m01 = input_json["mat"]["m01"];
  TYPE_1__ mat_pointer = {mat_pointer__m32, mat_pointer__m23, mat_pointer__m31, mat_pointer__m13, mat_pointer__m21, mat_pointer__m12, mat_pointer__m30, mat_pointer__m03, mat_pointer__m20, mat_pointer__m02, mat_pointer__m10, mat_pointer__m01};
  TYPE_1__* mat = &mat_pointer;
  clock_t begin = clock();
  matrix4f_transpose(mat);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mat);
}