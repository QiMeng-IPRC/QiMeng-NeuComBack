#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* type; scalar_t__* size; scalar_t__ cols; } ;

/* Variables and functions */
extern  TYPE_1__ ptable ; 
extern "C" { void print_table_clean();
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
  json output_temp_2;

  output_temp_2["type"] = ptable.type;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    long int output_temp_5 = ptable.size[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_temp_2["size"] = output_temp_3;

  output_temp_2["cols"] = ptable.cols;
  output_json["ptable"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* ptable__type = strdup(input_json["ptable"]["type"].get<std::string>().c_str());
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["ptable"]["size"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* ptable__size = &input_temp_1_vec[0];
  long int ptable__cols = input_json["ptable"]["cols"];
  ptable = {ptable__type, ptable__size, ptable__cols};
  clock_t begin = clock();
  print_table_clean();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}