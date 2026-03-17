#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ count; scalar_t__ letter; } ;

/* Variables and functions */
extern  TYPE_1__* diagram ; 
extern  TYPE_1__ temp ; 
extern "C" { void sort_letter_diagram();
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
    TYPE_1__ output_temp_4 = diagram[i3];
    json output_temp_5;

    output_temp_5["count"] = output_temp_4.count;

    output_temp_5["letter"] = output_temp_4.letter;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["diagram"] = output_temp_2;
  json output_temp_6;

  output_temp_6["count"] = temp.count;

  output_temp_6["letter"] = temp.letter;
  output_json["temp"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["diagram"]) {
    long int input_temp_1_inner__count = elem["count"];
    long int input_temp_1_inner__letter = elem["letter"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__count, input_temp_1_inner__letter};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  diagram = &input_temp_1_vec[0];
  long int temp__count = input_json["temp"]["count"];
  long int temp__letter = input_json["temp"]["letter"];
  temp = {temp__count, temp__letter};
  clock_t begin = clock();
  sort_letter_diagram();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}