#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ FilePosition ;

/* Variables and functions */
extern  scalar_t__ SNORT_FILE_END ; 
extern  scalar_t__ SNORT_FILE_FULL ; 
extern  scalar_t__ SNORT_FILE_START ; 
extern "C" { void finalFilePosition(FilePosition *position);
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

void write_output(long int* position) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    long int output_temp_4 = position[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["position"] = output_temp_2;

  output_json["SNORT_FILE_END"] = SNORT_FILE_END;

  output_json["SNORT_FILE_FULL"] = SNORT_FILE_FULL;

  output_json["SNORT_FILE_START"] = SNORT_FILE_START;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["position"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* position = &input_temp_1_vec[0];
  SNORT_FILE_END = input_json["SNORT_FILE_END"];
  SNORT_FILE_FULL = input_json["SNORT_FILE_FULL"];
  SNORT_FILE_START = input_json["SNORT_FILE_START"];
  clock_t begin = clock();
  finalFilePosition(position);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(position);
}