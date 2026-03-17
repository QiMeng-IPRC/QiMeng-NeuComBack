#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct dt_interpolation {int width; } ;

/* Variables and functions */
extern "C" { void fn3 (struct dt_interpolation *p1, int *p2);
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

void write_output(struct dt_interpolation* p1, int* p2) {
  json output_json;
  struct dt_interpolation output_temp_2 = *p1;
  json output_temp_3;

  output_temp_3["width"] = output_temp_2.width;
  output_json["p1"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = p2[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["p2"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p1_pointer__width = input_json["p1"]["width"];
  struct dt_interpolation p1_pointer = {p1_pointer__width};
  struct dt_interpolation* p1 = &p1_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["p2"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* p2 = &input_temp_1_vec[0];
  clock_t begin = clock();
  fn3(p1, p2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p1, p2);
}