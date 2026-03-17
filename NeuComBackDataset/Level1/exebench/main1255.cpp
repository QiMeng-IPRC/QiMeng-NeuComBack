#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int minimum; int maximum; } ;
typedef  TYPE_1__ MinMax ;

/* Variables and functions */
extern "C" { void update_minmax(MinMax * values, int number, int * first);
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

void write_output(TYPE_1__* values, int number, int* first) {
  json output_json;
  TYPE_1__ output_temp_2 = *values;
  json output_temp_3;

  output_temp_3["minimum"] = output_temp_2.minimum;

  output_temp_3["maximum"] = output_temp_2.maximum;
  output_json["values"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = first[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["first"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int values_pointer__minimum = input_json["values"]["minimum"];
  int values_pointer__maximum = input_json["values"]["maximum"];
  TYPE_1__ values_pointer = {values_pointer__minimum, values_pointer__maximum};
  TYPE_1__* values = &values_pointer;
  int number = input_json["number"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["first"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* first = &input_temp_1_vec[0];
  clock_t begin = clock();
  update_minmax(values, number, first);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(values, number, first);
}