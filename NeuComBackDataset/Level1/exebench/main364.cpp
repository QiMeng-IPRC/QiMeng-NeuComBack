#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int key; int value; } ;

/* Variables and functions */
extern  size_t pifLen ; 
extern  TYPE_1__* program ; 
extern "C" { void addPIF(int key, int value);
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

void write_output(int key, int value) {
  json output_json;

  output_json["pifLen"] = pifLen;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = program[i3];
    json output_temp_5;

    output_temp_5["key"] = output_temp_4.key;

    output_temp_5["value"] = output_temp_4.value;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["program"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int key = input_json["key"];
  int value = input_json["value"];
  pifLen = input_json["pifLen"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["program"]) {
    int input_temp_1_inner__key = elem["key"];
    int input_temp_1_inner__value = elem["value"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__key, input_temp_1_inner__value};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  program = &input_temp_1_vec[0];
  clock_t begin = clock();
  addPIF(key, value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(key, value);
}