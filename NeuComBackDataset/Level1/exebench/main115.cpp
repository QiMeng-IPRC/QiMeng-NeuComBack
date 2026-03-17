#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int q0; int q1; int q2; int q3; } ;
typedef  TYPE_1__ fpQuaternion_t ;

/* Variables and functions */
extern "C" { fpQuaternion_t * quaternionMultiply(fpQuaternion_t * result, const fpQuaternion_t * a, const fpQuaternion_t * b);
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

void write_output(TYPE_1__* result, TYPE_1__* a, TYPE_1__* b, TYPE_1__* returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = result[i3];
    json output_temp_5;

    output_temp_5["q0"] = output_temp_4.q0;

    output_temp_5["q1"] = output_temp_4.q1;

    output_temp_5["q2"] = output_temp_4.q2;

    output_temp_5["q3"] = output_temp_4.q3;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["result"] = output_temp_2;
  TYPE_1__ output_temp_6 = *a;
  json output_temp_7;

  output_temp_7["q0"] = output_temp_6.q0;

  output_temp_7["q1"] = output_temp_6.q1;

  output_temp_7["q2"] = output_temp_6.q2;

  output_temp_7["q3"] = output_temp_6.q3;
  output_json["a"] = output_temp_7;
  TYPE_1__ output_temp_8 = *b;
  json output_temp_9;

  output_temp_9["q0"] = output_temp_8.q0;

  output_temp_9["q1"] = output_temp_8.q1;

  output_temp_9["q2"] = output_temp_8.q2;

  output_temp_9["q3"] = output_temp_8.q3;
  output_json["b"] = output_temp_9;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    TYPE_1__ output_temp_12 = returnv[i11];
    json output_temp_13;

    output_temp_13["q0"] = output_temp_12.q0;

    output_temp_13["q1"] = output_temp_12.q1;

    output_temp_13["q2"] = output_temp_12.q2;

    output_temp_13["q3"] = output_temp_12.q3;
    output_temp_10.push_back(output_temp_13);
  }
  output_json["returnv"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["result"]) {
    int input_temp_1_inner__q0 = elem["q0"];
    int input_temp_1_inner__q1 = elem["q1"];
    int input_temp_1_inner__q2 = elem["q2"];
    int input_temp_1_inner__q3 = elem["q3"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__q0, input_temp_1_inner__q1, input_temp_1_inner__q2, input_temp_1_inner__q3};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* result = &input_temp_1_vec[0];
  int a_pointer__q0 = input_json["a"]["q0"];
  int a_pointer__q1 = input_json["a"]["q1"];
  int a_pointer__q2 = input_json["a"]["q2"];
  int a_pointer__q3 = input_json["a"]["q3"];
  TYPE_1__ a_pointer = {a_pointer__q0, a_pointer__q1, a_pointer__q2, a_pointer__q3};
  TYPE_1__* a = &a_pointer;
  int b_pointer__q0 = input_json["b"]["q0"];
  int b_pointer__q1 = input_json["b"]["q1"];
  int b_pointer__q2 = input_json["b"]["q2"];
  int b_pointer__q3 = input_json["b"]["q3"];
  TYPE_1__ b_pointer = {b_pointer__q0, b_pointer__q1, b_pointer__q2, b_pointer__q3};
  TYPE_1__* b = &b_pointer;
  clock_t begin = clock();
  TYPE_1__* returnv = quaternionMultiply(result, a, b);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(result, a, b, returnv);
}