#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double xbar; double dx; double ybar; double dy; double zbar; double dz; } ;

/* Variables and functions */
extern  TYPE_1__* MyGraph ; 
extern "C" { void scale3d(double x, double y, double z, float *xp, float *yp, float *zp);
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

void write_output(double x, double y, double z, float* xp, float* yp, float* zp) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    float output_temp_6 = xp[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["xp"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    float output_temp_9 = yp[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["yp"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    float output_temp_12 = zp[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["zp"] = output_temp_10;
  TYPE_1__ output_temp_13 = *MyGraph;
  json output_temp_14;

  output_temp_14["xbar"] = output_temp_13.xbar;

  output_temp_14["dx"] = output_temp_13.dx;

  output_temp_14["ybar"] = output_temp_13.ybar;

  output_temp_14["dy"] = output_temp_13.dy;

  output_temp_14["zbar"] = output_temp_13.zbar;

  output_temp_14["dz"] = output_temp_13.dz;
  output_json["MyGraph"] = output_temp_14;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double x = input_json["x"];
  double y = input_json["y"];
  double z = input_json["z"];
  std::vector<float> input_temp_1_vec;
  for (auto& elem : input_json["xp"]) {
    float input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  float* xp = &input_temp_1_vec[0];
  std::vector<float> input_temp_2_vec;
  for (auto& elem : input_json["yp"]) {
    float input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  float* yp = &input_temp_2_vec[0];
  std::vector<float> input_temp_3_vec;
  for (auto& elem : input_json["zp"]) {
    float input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  float* zp = &input_temp_3_vec[0];
  double MyGraph_pointer__xbar = input_json["MyGraph"]["xbar"];
  double MyGraph_pointer__dx = input_json["MyGraph"]["dx"];
  double MyGraph_pointer__ybar = input_json["MyGraph"]["ybar"];
  double MyGraph_pointer__dy = input_json["MyGraph"]["dy"];
  double MyGraph_pointer__zbar = input_json["MyGraph"]["zbar"];
  double MyGraph_pointer__dz = input_json["MyGraph"]["dz"];
  TYPE_1__ MyGraph_pointer = {MyGraph_pointer__xbar, MyGraph_pointer__dx, MyGraph_pointer__ybar, MyGraph_pointer__dy, MyGraph_pointer__zbar, MyGraph_pointer__dz};
  MyGraph = &MyGraph_pointer;
  clock_t begin = clock();
  scale3d(x, y, z, xp, yp, zp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, y, z, xp, yp, zp);
}