#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double x; double y; double z; double w; } ;
typedef  TYPE_1__ double4 ;

/* Variables and functions */
extern "C" { void d4_read_array( double4* v, const double* arr );
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

void write_output(TYPE_1__* v, double* arr) {
  json output_json;
  TYPE_1__ output_temp_2 = *v;
  json output_temp_3;

  output_temp_3["x"] = output_temp_2.x;

  output_temp_3["y"] = output_temp_2.y;

  output_temp_3["z"] = output_temp_2.z;

  output_temp_3["w"] = output_temp_2.w;
  output_json["v"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    double output_temp_6 = arr[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["arr"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double v_pointer__x = input_json["v"]["x"];
  double v_pointer__y = input_json["v"]["y"];
  double v_pointer__z = input_json["v"]["z"];
  double v_pointer__w = input_json["v"]["w"];
  TYPE_1__ v_pointer = {v_pointer__x, v_pointer__y, v_pointer__z, v_pointer__w};
  TYPE_1__* v = &v_pointer;
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["arr"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* arr = &input_temp_1_vec[0];
  clock_t begin = clock();
  d4_read_array(v, arr);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(v, arr);
}