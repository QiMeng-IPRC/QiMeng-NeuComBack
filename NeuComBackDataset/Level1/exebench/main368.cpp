#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ level; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  BREATHING_HALT_OFF ; 
extern  int /*<<< orphan*/  BREATHING_HALT_ON ; 
extern  int /*<<< orphan*/  breathing_halt ; 
extern  TYPE_1__ kb_backlight_config ; 
extern "C" { void breathing_self_disable(void);
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

  output_json["BREATHING_HALT_OFF"] = BREATHING_HALT_OFF;

  output_json["BREATHING_HALT_ON"] = BREATHING_HALT_ON;

  output_json["breathing_halt"] = breathing_halt;
  json output_temp_1;

  output_temp_1["level"] = kb_backlight_config.level;
  output_json["kb_backlight_config"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  BREATHING_HALT_OFF = input_json["BREATHING_HALT_OFF"];
  BREATHING_HALT_ON = input_json["BREATHING_HALT_ON"];
  breathing_halt = input_json["breathing_halt"];
  long int kb_backlight_config__level = input_json["kb_backlight_config"]["level"];
  kb_backlight_config = {kb_backlight_config__level};
  clock_t begin = clock();
  breathing_self_disable();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}