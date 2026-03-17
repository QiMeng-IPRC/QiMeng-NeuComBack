#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float windowAspect; } ;
struct TYPE_4__ {float xscale; float yscale; TYPE_1__ glconfig; } ;

/* Variables and functions */
extern  TYPE_2__* DC ; 
extern "C" { void AdjustFrom640(float *x, float *y, float *w, float *h);
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

void write_output(float* x, float* y, float* w, float* h) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    float output_temp_7 = x[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["x"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    float output_temp_10 = y[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["y"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    float output_temp_13 = w[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["w"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    float output_temp_16 = h[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["h"] = output_temp_14;
  TYPE_2__ output_temp_17 = *DC;
  json output_temp_18;

  output_temp_18["xscale"] = output_temp_17.xscale;

  output_temp_18["yscale"] = output_temp_17.yscale;
  json output_temp_19;

  output_temp_19["windowAspect"] = output_temp_17.glconfig.windowAspect;
  output_temp_18["glconfig"] = output_temp_19;
  output_json["DC"] = output_temp_18;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<float> input_temp_1_vec;
  for (auto& elem : input_json["x"]) {
    float input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  float* x = &input_temp_1_vec[0];
  std::vector<float> input_temp_2_vec;
  for (auto& elem : input_json["y"]) {
    float input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  float* y = &input_temp_2_vec[0];
  std::vector<float> input_temp_3_vec;
  for (auto& elem : input_json["w"]) {
    float input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  float* w = &input_temp_3_vec[0];
  std::vector<float> input_temp_4_vec;
  for (auto& elem : input_json["h"]) {
    float input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  float* h = &input_temp_4_vec[0];
  float DC_pointer__xscale = input_json["DC"]["xscale"];
  float DC_pointer__yscale = input_json["DC"]["yscale"];
  float DC_pointer__glconfig__windowAspect = input_json["DC"]["glconfig"]["windowAspect"];
  TYPE_1__ DC_pointer__glconfig = {DC_pointer__glconfig__windowAspect};
  TYPE_2__ DC_pointer = {DC_pointer__xscale, DC_pointer__yscale, DC_pointer__glconfig};
  DC = &DC_pointer;
  clock_t begin = clock();
  AdjustFrom640(x, y, w, h);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, y, w, h);
}