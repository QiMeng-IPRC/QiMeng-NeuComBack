#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int A; int X; } ;
typedef  TYPE_1__ bpf_state_t ;

/* Variables and functions */
extern "C" { unsigned int bpf_alu_lsh_x(bpf_state_t *state, unsigned char jt, unsigned char jf, unsigned long k);
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

void write_output(TYPE_1__* state, unsigned char jt, unsigned char jf, unsigned long int k, unsigned int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *state;
  json output_temp_2;

  output_temp_2["A"] = output_temp_1.A;

  output_temp_2["X"] = output_temp_1.X;
  output_json["state"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int state_pointer__A = input_json["state"]["A"];
  int state_pointer__X = input_json["state"]["X"];
  TYPE_1__ state_pointer = {state_pointer__A, state_pointer__X};
  TYPE_1__* state = &state_pointer;
  unsigned char jt = input_json["jt"];
  unsigned char jf = input_json["jf"];
  unsigned long int k = input_json["k"];
  clock_t begin = clock();
  unsigned int returnv = bpf_alu_lsh_x(state, jt, jf, k);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(state, jt, jf, k, returnv);
}