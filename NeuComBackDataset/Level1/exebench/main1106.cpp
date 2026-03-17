#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sample_callback; } ;
struct TYPE_5__ {TYPE_1__ apu_output; } ;
typedef  int /*<<< orphan*/  GB_sample_callback_t ;
typedef  TYPE_2__ GB_gameboy_t ;

/* Variables and functions */
extern "C" { void GB_apu_set_sample_callback(GB_gameboy_t *gb, GB_sample_callback_t callback);
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

void write_output(TYPE_2__* gb, int callback) {
  json output_json;
  TYPE_2__ output_temp_1 = *gb;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["sample_callback"] = output_temp_1.apu_output.sample_callback;
  output_temp_2["apu_output"] = output_temp_3;
  output_json["gb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int gb_pointer__apu_output__sample_callback = input_json["gb"]["apu_output"]["sample_callback"];
  TYPE_1__ gb_pointer__apu_output = {gb_pointer__apu_output__sample_callback};
  TYPE_2__ gb_pointer = {gb_pointer__apu_output};
  TYPE_2__* gb = &gb_pointer;
  int callback = input_json["callback"];
  clock_t begin = clock();
  GB_apu_set_sample_callback(gb, callback);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(gb, callback);
}