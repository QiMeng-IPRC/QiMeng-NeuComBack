#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t a; size_t h; int flag_zero; int flag_sign; scalar_t__ flag_half; int /*<<< orphan*/  flag_parity_overflow; scalar_t__ flag_sub; scalar_t__ flag_carry; } ;

/* Variables and functions */
extern  int /*<<< orphan*/ * uint8_even_parity ; 
extern  int used_cycles ; 
extern  TYPE_1__ z80_state ; 
extern "C" { void z80_b4_or_a_h (void);
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
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = uint8_even_parity[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["uint8_even_parity"] = output_temp_2;

  output_json["used_cycles"] = used_cycles;
  json output_temp_5;

  output_temp_5["a"] = z80_state.a;

  output_temp_5["h"] = z80_state.h;

  output_temp_5["flag_zero"] = z80_state.flag_zero;

  output_temp_5["flag_sign"] = z80_state.flag_sign;

  output_temp_5["flag_half"] = z80_state.flag_half;

  output_temp_5["flag_parity_overflow"] = z80_state.flag_parity_overflow;

  output_temp_5["flag_sub"] = z80_state.flag_sub;

  output_temp_5["flag_carry"] = z80_state.flag_carry;
  output_json["z80_state"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["uint8_even_parity"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  uint8_even_parity = &input_temp_1_vec[0];
  used_cycles = input_json["used_cycles"];
  unsigned long int z80_state__a = input_json["z80_state"]["a"];
  unsigned long int z80_state__h = input_json["z80_state"]["h"];
  int z80_state__flag_zero = input_json["z80_state"]["flag_zero"];
  int z80_state__flag_sign = input_json["z80_state"]["flag_sign"];
  long int z80_state__flag_half = input_json["z80_state"]["flag_half"];
  int z80_state__flag_parity_overflow = input_json["z80_state"]["flag_parity_overflow"];
  long int z80_state__flag_sub = input_json["z80_state"]["flag_sub"];
  long int z80_state__flag_carry = input_json["z80_state"]["flag_carry"];
  z80_state = {z80_state__a, z80_state__h, z80_state__flag_zero, z80_state__flag_sign, z80_state__flag_half, z80_state__flag_parity_overflow, z80_state__flag_sub, z80_state__flag_carry};
  clock_t begin = clock();
  z80_b4_or_a_h();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}