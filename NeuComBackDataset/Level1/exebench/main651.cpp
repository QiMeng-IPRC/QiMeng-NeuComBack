#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float minlod; float maxlod; } ;
typedef  TYPE_1__ GLBSampler ;

/* Variables and functions */
extern "C" { void glbSamplerLOD (GLBSampler *sampler, float minlod, float maxlod);
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

void write_output(TYPE_1__* sampler, float minlod, float maxlod) {
  json output_json;
  TYPE_1__ output_temp_1 = *sampler;
  json output_temp_2;

  output_temp_2["minlod"] = output_temp_1.minlod;

  output_temp_2["maxlod"] = output_temp_1.maxlod;
  output_json["sampler"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float sampler_pointer__minlod = input_json["sampler"]["minlod"];
  float sampler_pointer__maxlod = input_json["sampler"]["maxlod"];
  TYPE_1__ sampler_pointer = {sampler_pointer__minlod, sampler_pointer__maxlod};
  TYPE_1__* sampler = &sampler_pointer;
  float minlod = input_json["minlod"];
  float maxlod = input_json["maxlod"];
  clock_t begin = clock();
  glbSamplerLOD(sampler, minlod, maxlod);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sampler, minlod, maxlod);
}