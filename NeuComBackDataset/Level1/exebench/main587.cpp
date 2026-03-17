#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ subtilis_type_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  SUBTILIS_TYPE_ARRAY_INTEGER ; 
extern "C" { void prv_array_of(const subtilis_type_t *element_type, subtilis_type_t *type);
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

void write_output(TYPE_1__* element_type, TYPE_1__* type) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = element_type[i3];
    json output_temp_5;

    output_temp_5["type"] = output_temp_4.type;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["element_type"] = output_temp_2;
  TYPE_1__ output_temp_6 = *type;
  json output_temp_7;

  output_temp_7["type"] = output_temp_6.type;
  output_json["type"] = output_temp_7;

  output_json["SUBTILIS_TYPE_ARRAY_INTEGER"] = SUBTILIS_TYPE_ARRAY_INTEGER;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["element_type"]) {
    int input_temp_1_inner__type = elem["type"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__type};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* element_type = &input_temp_1_vec[0];
  int type_pointer__type = input_json["type"]["type"];
  TYPE_1__ type_pointer = {type_pointer__type};
  TYPE_1__* type = &type_pointer;
  SUBTILIS_TYPE_ARRAY_INTEGER = input_json["SUBTILIS_TYPE_ARRAY_INTEGER"];
  clock_t begin = clock();
  prv_array_of(element_type, type);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(element_type, type);
}