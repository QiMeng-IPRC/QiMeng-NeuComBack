#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int p; int pc; int delay; } ;
typedef  TYPE_1__ e6502_t ;

/* Variables and functions */
extern "C" { void op_38 (e6502_t *c);
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

void write_output(TYPE_1__* c) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = c[i3];
    json output_temp_5;

    output_temp_5["p"] = output_temp_4.p;

    output_temp_5["pc"] = output_temp_4.pc;

    output_temp_5["delay"] = output_temp_4.delay;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["c"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["c"]) {
    int input_temp_1_inner__p = elem["p"];
    int input_temp_1_inner__pc = elem["pc"];
    int input_temp_1_inner__delay = elem["delay"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__p, input_temp_1_inner__pc, input_temp_1_inner__delay};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* c = &input_temp_1_vec[0];
  clock_t begin = clock();
  op_38(c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c);
}