#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct imv_viewport {int x; int y; } ;

/* Variables and functions */
extern "C" { void imv_viewport_get_offset(struct imv_viewport *view, int *x, int *y);
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

void write_output(struct imv_viewport* view, int* x, int* y) {
  json output_json;
  struct imv_viewport output_temp_3 = *view;
  json output_temp_4;

  output_temp_4["x"] = output_temp_3.x;

  output_temp_4["y"] = output_temp_3.y;
  output_json["view"] = output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = x[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["x"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = y[i9];

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
  int view_pointer__x = input_json["view"]["x"];
  int view_pointer__y = input_json["view"]["y"];
  struct imv_viewport view_pointer = {view_pointer__x, view_pointer__y};
  struct imv_viewport* view = &view_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["x"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* x = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["y"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* y = &input_temp_2_vec[0];
  clock_t begin = clock();
  imv_viewport_get_offset(view, x, y);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(view, x, y);
}