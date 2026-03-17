#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float x; float y; float z; } ;
typedef  TYPE_1__ Point ;

/* Variables and functions */
extern "C" { void mapOutput(float *output, Point *A, int dim);
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

void write_output(float* output, TYPE_1__* A, int dim) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    float output_temp_4 = output[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["output"] = output_temp_2;
  TYPE_1__ output_temp_5 = *A;
  json output_temp_6;

  output_temp_6["x"] = output_temp_5.x;

  output_temp_6["y"] = output_temp_5.y;

  output_temp_6["z"] = output_temp_5.z;
  output_json["A"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<float> input_temp_1_vec;
  for (auto& elem : input_json["output"]) {
    float input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  float* output = &input_temp_1_vec[0];
  float A_pointer__x = input_json["A"]["x"];
  float A_pointer__y = input_json["A"]["y"];
  float A_pointer__z = input_json["A"]["z"];
  TYPE_1__ A_pointer = {A_pointer__x, A_pointer__y, A_pointer__z};
  TYPE_1__* A = &A_pointer;
  int dim = input_json["dim"];
  clock_t begin = clock();
  mapOutput(output, A, dim);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(output, A, dim);
}