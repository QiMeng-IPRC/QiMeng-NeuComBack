#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct henon_info {double const a; double const b; } ;

/* Variables and functions */
extern "C" { void henon_map ( const struct henon_info *h_info, const double *x, double *y);
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

void write_output(struct henon_info* h_info, double* x, double* y) {
  json output_json;
  struct henon_info output_temp_3 = *h_info;
  json output_temp_4;

  output_temp_4["a"] = output_temp_3.a;

  output_temp_4["b"] = output_temp_3.b;
  output_json["h_info"] = output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    double output_temp_7 = x[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["x"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    double output_temp_10 = y[i9];

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
  double h_info_pointer__a = input_json["h_info"]["a"];
  double h_info_pointer__b = input_json["h_info"]["b"];
  struct henon_info h_info_pointer = {h_info_pointer__a, h_info_pointer__b};
  struct henon_info* h_info = &h_info_pointer;
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["x"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* x = &input_temp_1_vec[0];
  std::vector<double> input_temp_2_vec;
  for (auto& elem : input_json["y"]) {
    double input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  double* y = &input_temp_2_vec[0];
  clock_t begin = clock();
  henon_map(h_info, x, y);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(h_info, x, y);
}