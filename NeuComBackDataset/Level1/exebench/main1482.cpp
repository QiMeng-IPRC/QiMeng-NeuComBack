#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct bezier_t {double x1; double x2; double x3; double x4; double y1; double y2; double y3; double y4; } ;

/* Variables and functions */
extern "C" { void deltaBRZ(struct bezier_t *bezier, float t, float *x, float *y);
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

void write_output(struct bezier_t* bezier, float t, float* x, float* y) {
  json output_json;
  struct bezier_t output_temp_3 = *bezier;
  json output_temp_4;

  output_temp_4["x1"] = output_temp_3.x1;

  output_temp_4["x2"] = output_temp_3.x2;

  output_temp_4["x3"] = output_temp_3.x3;

  output_temp_4["x4"] = output_temp_3.x4;

  output_temp_4["y1"] = output_temp_3.y1;

  output_temp_4["y2"] = output_temp_3.y2;

  output_temp_4["y3"] = output_temp_3.y3;

  output_temp_4["y4"] = output_temp_3.y4;
  output_json["bezier"] = output_temp_4;
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
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double bezier_pointer__x1 = input_json["bezier"]["x1"];
  double bezier_pointer__x2 = input_json["bezier"]["x2"];
  double bezier_pointer__x3 = input_json["bezier"]["x3"];
  double bezier_pointer__x4 = input_json["bezier"]["x4"];
  double bezier_pointer__y1 = input_json["bezier"]["y1"];
  double bezier_pointer__y2 = input_json["bezier"]["y2"];
  double bezier_pointer__y3 = input_json["bezier"]["y3"];
  double bezier_pointer__y4 = input_json["bezier"]["y4"];
  struct bezier_t bezier_pointer = {bezier_pointer__x1, bezier_pointer__x2, bezier_pointer__x3, bezier_pointer__x4, bezier_pointer__y1, bezier_pointer__y2, bezier_pointer__y3, bezier_pointer__y4};
  struct bezier_t* bezier = &bezier_pointer;
  float t = input_json["t"];
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
  clock_t begin = clock();
  deltaBRZ(bezier, t, x, y);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(bezier, t, x, y);
}