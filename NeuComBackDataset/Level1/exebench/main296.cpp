#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  uintptr_t LEVEL_BYTES ; 
extern  uintptr_t LEVEL_SIZE ; 
extern  uintptr_t METADATA_BASE ; 
extern  uintptr_t PAGE_MASK ; 
extern "C" { uintptr_t level_bmap(size_t level, uintptr_t addr, uintptr_t *offset);
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

void write_output(unsigned long int level, unsigned long int addr, unsigned long int* offset, unsigned long int returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    unsigned long int output_temp_4 = offset[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["offset"] = output_temp_2;

  output_json["LEVEL_BYTES"] = LEVEL_BYTES;

  output_json["LEVEL_SIZE"] = LEVEL_SIZE;

  output_json["METADATA_BASE"] = METADATA_BASE;

  output_json["PAGE_MASK"] = PAGE_MASK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int level = input_json["level"];
  unsigned long int addr = input_json["addr"];
  std::vector<unsigned long int> input_temp_1_vec;
  for (auto& elem : input_json["offset"]) {
    unsigned long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned long int* offset = &input_temp_1_vec[0];
  LEVEL_BYTES = input_json["LEVEL_BYTES"];
  LEVEL_SIZE = input_json["LEVEL_SIZE"];
  METADATA_BASE = input_json["METADATA_BASE"];
  PAGE_MASK = input_json["PAGE_MASK"];
  clock_t begin = clock();
  unsigned long int returnv = level_bmap(level, addr, offset);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(level, addr, offset, returnv);
}