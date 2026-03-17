#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  double real ;
struct TYPE_5__ {double x; double y; double z; } ;
typedef  TYPE_1__ VecR ;

/* Variables and functions */
extern "C" { void CalcOrientRestrainInteraction( real *potEn, VecR *torque, const real k, const VecR eRef, const VecR eAct );
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

void write_output(double* potEn, TYPE_1__* torque, double k, TYPE_1__ eRef, TYPE_1__ eAct) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    double output_temp_5 = potEn[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["potEn"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    TYPE_1__ output_temp_8 = torque[i7];
    json output_temp_9;

    output_temp_9["x"] = output_temp_8.x;

    output_temp_9["y"] = output_temp_8.y;

    output_temp_9["z"] = output_temp_8.z;
    output_temp_6.push_back(output_temp_9);
  }
  output_json["torque"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["potEn"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* potEn = &input_temp_1_vec[0];
  std::vector<TYPE_1__> input_temp_2_vec;
  for (auto& elem : input_json["torque"]) {
    double input_temp_2_inner__x = elem["x"];
    double input_temp_2_inner__y = elem["y"];
    double input_temp_2_inner__z = elem["z"];
    TYPE_1__ input_temp_2_inner = {input_temp_2_inner__x, input_temp_2_inner__y, input_temp_2_inner__z};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  TYPE_1__* torque = &input_temp_2_vec[0];
  double k = input_json["k"];
  double eRef__x = input_json["eRef"]["x"];
  double eRef__y = input_json["eRef"]["y"];
  double eRef__z = input_json["eRef"]["z"];
  TYPE_1__ eRef = {eRef__x, eRef__y, eRef__z};
  double eAct__x = input_json["eAct"]["x"];
  double eAct__y = input_json["eAct"]["y"];
  double eAct__z = input_json["eAct"]["z"];
  TYPE_1__ eAct = {eAct__x, eAct__y, eAct__z};
  clock_t begin = clock();
  CalcOrientRestrainInteraction(potEn, torque, k, eRef, eAct);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(potEn, torque, k, eRef, eAct);
}