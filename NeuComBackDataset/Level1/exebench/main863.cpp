#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  color_delay; } ;
struct TYPE_3__ {int /*<<< orphan*/  color_delay; } ;

/* Variables and functions */
extern  TYPE_2__ COLOURS_PAL_setup ; 
extern  TYPE_1__ default_setup ; 
extern "C" { void COLOURS_PAL_RestoreDefaults(void);
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
  json output_temp_1;

  output_temp_1["color_delay"] = COLOURS_PAL_setup.color_delay;
  output_json["COLOURS_PAL_setup"] = output_temp_1;
  json output_temp_2;

  output_temp_2["color_delay"] = default_setup.color_delay;
  output_json["default_setup"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int COLOURS_PAL_setup__color_delay = input_json["COLOURS_PAL_setup"]["color_delay"];
  COLOURS_PAL_setup = {COLOURS_PAL_setup__color_delay};
  int default_setup__color_delay = input_json["default_setup"]["color_delay"];
  default_setup = {default_setup__color_delay};
  clock_t begin = clock();
  COLOURS_PAL_RestoreDefaults();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}