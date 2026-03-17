#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct ao_quaternion {float r; float x; float y; float z; } ;

/* Variables and functions */
extern "C" { float ao_quaternion_normal(const struct ao_quaternion *a);
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

void write_output(struct ao_quaternion* a, float returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct ao_quaternion output_temp_4 = a[i3];
    json output_temp_5;

    output_temp_5["r"] = output_temp_4.r;

    output_temp_5["x"] = output_temp_4.x;

    output_temp_5["y"] = output_temp_4.y;

    output_temp_5["z"] = output_temp_4.z;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["a"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct ao_quaternion> input_temp_1_vec;
  for (auto& elem : input_json["a"]) {
    float input_temp_1_inner__r = elem["r"];
    float input_temp_1_inner__x = elem["x"];
    float input_temp_1_inner__y = elem["y"];
    float input_temp_1_inner__z = elem["z"];
    struct ao_quaternion input_temp_1_inner = {input_temp_1_inner__r, input_temp_1_inner__x, input_temp_1_inner__y, input_temp_1_inner__z};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct ao_quaternion* a = &input_temp_1_vec[0];
  clock_t begin = clock();
  float returnv = ao_quaternion_normal(a);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, returnv);
}