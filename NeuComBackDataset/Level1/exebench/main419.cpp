#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int h; int flag_parity_overflow; int flag_half; int flag_zero; int flag_sign; scalar_t__ flag_sub; } ;

/* Variables and functions */
extern  int used_cycles ; 
extern  TYPE_1__ z80_state ; 
extern "C" { void z80_24_inc_h (void);
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

  output_json["used_cycles"] = used_cycles;
  json output_temp_1;

  output_temp_1["h"] = z80_state.h;

  output_temp_1["flag_parity_overflow"] = z80_state.flag_parity_overflow;

  output_temp_1["flag_half"] = z80_state.flag_half;

  output_temp_1["flag_zero"] = z80_state.flag_zero;

  output_temp_1["flag_sign"] = z80_state.flag_sign;

  output_temp_1["flag_sub"] = z80_state.flag_sub;
  output_json["z80_state"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  used_cycles = input_json["used_cycles"];
  int z80_state__h = input_json["z80_state"]["h"];
  int z80_state__flag_parity_overflow = input_json["z80_state"]["flag_parity_overflow"];
  int z80_state__flag_half = input_json["z80_state"]["flag_half"];
  int z80_state__flag_zero = input_json["z80_state"]["flag_zero"];
  int z80_state__flag_sign = input_json["z80_state"]["flag_sign"];
  long int z80_state__flag_sub = input_json["z80_state"]["flag_sub"];
  z80_state = {z80_state__h, z80_state__flag_parity_overflow, z80_state__flag_half, z80_state__flag_zero, z80_state__flag_sign, z80_state__flag_sub};
  clock_t begin = clock();
  z80_24_inc_h();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}