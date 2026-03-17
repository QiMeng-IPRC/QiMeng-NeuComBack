#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x; int y; int z; } ;
typedef  TYPE_1__ V3D ;
typedef  int R8 ;
typedef  int IX ;

/* Variables and functions */
extern "C" { void CTShift(const V3D *s, R8 t[4][4]);
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

void write_output(TYPE_1__* s, int* t) {
  json output_json;
  TYPE_1__ output_temp_2 = *s;
  json output_temp_3;

  output_temp_3["x"] = output_temp_2.x;

  output_temp_3["y"] = output_temp_2.y;

  output_temp_3["z"] = output_temp_2.z;
  output_json["s"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 16; i5++) {
    int output_temp_6 = t[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["t"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int s_pointer__x = input_json["s"]["x"];
  int s_pointer__y = input_json["s"]["y"];
  int s_pointer__z = input_json["s"]["z"];
  TYPE_1__ s_pointer = {s_pointer__x, s_pointer__y, s_pointer__z};
  TYPE_1__* s = &s_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["t"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* t = &input_temp_1_vec[0];
  clock_t begin = clock();
  int(*casted_t)[4] = (int(*)[4])t;
  CTShift(s, casted_t);
  t = (int(*))casted_t;
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, t);
}