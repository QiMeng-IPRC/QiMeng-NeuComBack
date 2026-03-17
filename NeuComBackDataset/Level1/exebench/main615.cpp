#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bit_left; int buf_ptr; } ;
typedef  TYPE_1__ BitStream ;

/* Variables and functions */
extern "C" { void skip_put_bits(BitStream *s, int n);
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

void write_output(TYPE_1__* s, int n) {
  json output_json;
  TYPE_1__ output_temp_1 = *s;
  json output_temp_2;

  output_temp_2["bit_left"] = output_temp_1.bit_left;

  output_temp_2["buf_ptr"] = output_temp_1.buf_ptr;
  output_json["s"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int s_pointer__bit_left = input_json["s"]["bit_left"];
  int s_pointer__buf_ptr = input_json["s"]["buf_ptr"];
  TYPE_1__ s_pointer = {s_pointer__bit_left, s_pointer__buf_ptr};
  TYPE_1__* s = &s_pointer;
  int n = input_json["n"];
  clock_t begin = clock();
  skip_put_bits(s, n);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, n);
}