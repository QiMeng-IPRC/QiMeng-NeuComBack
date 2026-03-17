#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int size; } ;
typedef  TYPE_1__ Multiset ;

/* Variables and functions */
extern "C" { unsigned int multiset_cardinality(unsigned int* cardinality, Multiset* multiset);
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

void write_output(unsigned int* cardinality, TYPE_1__* multiset, unsigned int returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    unsigned int output_temp_4 = cardinality[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["cardinality"] = output_temp_2;
  TYPE_1__ output_temp_5 = *multiset;
  json output_temp_6;

  output_temp_6["size"] = output_temp_5.size;
  output_json["multiset"] = output_temp_6;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<unsigned int> input_temp_1_vec;
  for (auto& elem : input_json["cardinality"]) {
    unsigned int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned int* cardinality = &input_temp_1_vec[0];
  unsigned int multiset_pointer__size = input_json["multiset"]["size"];
  TYPE_1__ multiset_pointer = {multiset_pointer__size};
  TYPE_1__* multiset = &multiset_pointer;
  clock_t begin = clock();
  unsigned int returnv = multiset_cardinality(cardinality, multiset);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cardinality, multiset, returnv);
}