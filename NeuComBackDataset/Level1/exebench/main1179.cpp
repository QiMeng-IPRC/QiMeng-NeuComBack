#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned short gfx_flags; } ;

/* Variables and functions */
extern  TYPE_1__* _conf ; 
extern "C" { void dm_set_gfx_flag (unsigned short flag_id, unsigned short value);
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

void write_output(unsigned short flag_id, unsigned short value) {
  json output_json;
  TYPE_1__ output_temp_1 = *_conf;
  json output_temp_2;

  output_temp_2["gfx_flags"] = output_temp_1.gfx_flags;
  output_json["_conf"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned short flag_id = input_json["flag_id"];
  unsigned short value = input_json["value"];
  unsigned short _conf_pointer__gfx_flags = input_json["_conf"]["gfx_flags"];
  TYPE_1__ _conf_pointer = {_conf_pointer__gfx_flags};
  _conf = &_conf_pointer;
  clock_t begin = clock();
  dm_set_gfx_flag(flag_id, value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(flag_id, value);
}