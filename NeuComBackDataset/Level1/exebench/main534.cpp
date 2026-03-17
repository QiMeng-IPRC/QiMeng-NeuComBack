#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long val_number; } ;
struct TYPE_5__ {TYPE_1__ value; int /*<<< orphan*/  isnumber; } ;
typedef  TYPE_2__ shell_value ;

/* Variables and functions */
extern "C" { int shell_value_get_number(shell_value *value,long int *number);
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

void write_output(TYPE_2__* value, long int* number, int returnv) {
  json output_json;
  TYPE_2__ output_temp_2 = *value;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["val_number"] = output_temp_2.value.val_number;
  output_temp_3["value"] = output_temp_4;

  output_temp_3["isnumber"] = output_temp_2.isnumber;
  output_json["value"] = output_temp_3;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    long int output_temp_7 = number[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["number"] = output_temp_5;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int value_pointer__value__val_number = input_json["value"]["value"]["val_number"];
  TYPE_1__ value_pointer__value = {value_pointer__value__val_number};
  int value_pointer__isnumber = input_json["value"]["isnumber"];
  TYPE_2__ value_pointer = {value_pointer__value, value_pointer__isnumber};
  TYPE_2__* value = &value_pointer;
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["number"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* number = &input_temp_1_vec[0];
  clock_t begin = clock();
  int returnv = shell_value_get_number(value, number);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(value, number, returnv);
}