#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* menu; char* text; } ;
typedef  TYPE_1__ meta_compiler_workshop_sources ;

/* Variables and functions */
extern "C" { void get_meta_compiler_workshop_sources_for_Code(meta_compiler_workshop_sources *Code, int *return_count);
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

void write_output(TYPE_1__* Code, int* return_count) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    TYPE_1__ output_temp_5 = Code[i4];
    json output_temp_6;

    output_temp_6["menu"] = output_temp_5.menu;

    output_temp_6["text"] = output_temp_5.text;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["Code"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = return_count[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["return_count"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["Code"]) {
    char* input_temp_1_inner__menu = strdup(elem["menu"].get<std::string>().c_str());
    char* input_temp_1_inner__text = strdup(elem["text"].get<std::string>().c_str());
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__menu, input_temp_1_inner__text};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* Code = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["return_count"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* return_count = &input_temp_2_vec[0];
  clock_t begin = clock();
  get_meta_compiler_workshop_sources_for_Code(Code, return_count);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(Code, return_count);
}