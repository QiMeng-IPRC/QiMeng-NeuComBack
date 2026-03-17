#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float a_framerate; } ;
typedef  TYPE_1__ fsdp_media_description_t ;

/* Variables and functions */
extern "C" { float fsdp_get_media_framerate(const fsdp_media_description_t *dsc);
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

void write_output(TYPE_1__* dsc, float returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *dsc;
  json output_temp_2;

  output_temp_2["a_framerate"] = output_temp_1.a_framerate;
  output_json["dsc"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float dsc_pointer__a_framerate = input_json["dsc"]["a_framerate"];
  TYPE_1__ dsc_pointer = {dsc_pointer__a_framerate};
  TYPE_1__* dsc = &dsc_pointer;
  clock_t begin = clock();
  float returnv = fsdp_get_media_framerate(dsc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dsc, returnv);
}