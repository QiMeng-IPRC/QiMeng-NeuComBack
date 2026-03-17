#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int input_buffer_bitaccumulator; int input_buffer; } ;
typedef  TYPE_1__ alac_file ;

/* Variables and functions */
extern "C" { void unreadbits(alac_file *alac, int bits);
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

void write_output(TYPE_1__* alac, int bits) {
  json output_json;
  TYPE_1__ output_temp_1 = *alac;
  json output_temp_2;

  output_temp_2["input_buffer_bitaccumulator"] = output_temp_1.input_buffer_bitaccumulator;

  output_temp_2["input_buffer"] = output_temp_1.input_buffer;
  output_json["alac"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int alac_pointer__input_buffer_bitaccumulator = input_json["alac"]["input_buffer_bitaccumulator"];
  int alac_pointer__input_buffer = input_json["alac"]["input_buffer"];
  TYPE_1__ alac_pointer = {alac_pointer__input_buffer_bitaccumulator, alac_pointer__input_buffer};
  TYPE_1__* alac = &alac_pointer;
  int bits = input_json["bits"];
  clock_t begin = clock();
  unreadbits(alac, bits);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(alac, bits);
}