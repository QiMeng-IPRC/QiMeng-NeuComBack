#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gx_device ;
typedef  int /*<<< orphan*/  gs_imager_state ;
typedef  scalar_t__ frac ;

/* Variables and functions */
extern "C" { void rgb_cs_to_rgbk_cm(gx_device * dev, const gs_imager_state *pis, frac r, frac g, frac b, frac out[]);
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

void write_output(int* dev, int* pis, long int r, long int g, long int b, long int* out) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = dev[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["dev"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = pis[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["pis"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    long int output_temp_12 = out[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["out"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["dev"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* dev = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["pis"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* pis = &input_temp_2_vec[0];
  long int r = input_json["r"];
  long int g = input_json["g"];
  long int b = input_json["b"];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["out"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  long int* out = &input_temp_3_vec[0];
  clock_t begin = clock();
  rgb_cs_to_rgbk_cm(dev, pis, r, g, b, out);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dev, pis, r, g, b, out);
}