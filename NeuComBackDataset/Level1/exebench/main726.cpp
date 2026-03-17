#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  float uint8 ;
struct TYPE_3__ {float a; float r; float g; float b; } ;
typedef  TYPE_1__ fcolor_t ;

/* Variables and functions */
extern "C" { void get_fcolor_24(fcolor_t *c, uint8 *pixels);
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

void write_output(TYPE_1__* c, float* pixels) {
  json output_json;
  TYPE_1__ output_temp_2 = *c;
  json output_temp_3;

  output_temp_3["a"] = output_temp_2.a;

  output_temp_3["r"] = output_temp_2.r;

  output_temp_3["g"] = output_temp_2.g;

  output_temp_3["b"] = output_temp_2.b;
  output_json["c"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    float output_temp_6 = pixels[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["pixels"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float c_pointer__a = input_json["c"]["a"];
  float c_pointer__r = input_json["c"]["r"];
  float c_pointer__g = input_json["c"]["g"];
  float c_pointer__b = input_json["c"]["b"];
  TYPE_1__ c_pointer = {c_pointer__a, c_pointer__r, c_pointer__g, c_pointer__b};
  TYPE_1__* c = &c_pointer;
  std::vector<float> input_temp_1_vec;
  for (auto& elem : input_json["pixels"]) {
    float input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  float* pixels = &input_temp_1_vec[0];
  clock_t begin = clock();
  get_fcolor_24(c, pixels);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c, pixels);
}