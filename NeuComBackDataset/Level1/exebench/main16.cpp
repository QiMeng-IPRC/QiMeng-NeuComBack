#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double x; double R; double vx; double fx; double p; } ;
typedef  TYPE_1__ grain ;

/* Variables and functions */
extern  double kn ; 
extern  double nu ; 
extern "C" { double compute_force_right_wall(int i, grain* g, double wright);
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

void write_output(int i, TYPE_1__* g, double wright, double returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = g[i3];
    json output_temp_5;

    output_temp_5["x"] = output_temp_4.x;

    output_temp_5["R"] = output_temp_4.R;

    output_temp_5["vx"] = output_temp_4.vx;

    output_temp_5["fx"] = output_temp_4.fx;

    output_temp_5["p"] = output_temp_4.p;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["g"] = output_temp_2;

  output_json["kn"] = kn;

  output_json["nu"] = nu;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int i = input_json["i"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["g"]) {
    double input_temp_1_inner__x = elem["x"];
    double input_temp_1_inner__R = elem["R"];
    double input_temp_1_inner__vx = elem["vx"];
    double input_temp_1_inner__fx = elem["fx"];
    double input_temp_1_inner__p = elem["p"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__x, input_temp_1_inner__R, input_temp_1_inner__vx, input_temp_1_inner__fx, input_temp_1_inner__p};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* g = &input_temp_1_vec[0];
  double wright = input_json["wright"];
  kn = input_json["kn"];
  nu = input_json["nu"];
  clock_t begin = clock();
  double returnv = compute_force_right_wall(i, g, wright);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(i, g, wright, returnv);
}