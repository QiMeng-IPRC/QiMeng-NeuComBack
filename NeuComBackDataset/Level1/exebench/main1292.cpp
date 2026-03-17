#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int empty; scalar_t__ timestamp; scalar_t__ string; } ;

/* Variables and functions */
extern  TYPE_1__* Q ; 
extern "C" { void Q_init();
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

void write_output() {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = Q[i3];
    json output_temp_5;

    output_temp_5["empty"] = output_temp_4.empty;

    output_temp_5["timestamp"] = output_temp_4.timestamp;

    output_temp_5["string"] = output_temp_4.string;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["Q"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["Q"]) {
    int input_temp_1_inner__empty = elem["empty"];
    long int input_temp_1_inner__timestamp = elem["timestamp"];
    long int input_temp_1_inner__string = elem["string"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__empty, input_temp_1_inner__timestamp, input_temp_1_inner__string};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  Q = &input_temp_1_vec[0];
  clock_t begin = clock();
  Q_init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}