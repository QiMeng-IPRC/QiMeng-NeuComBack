#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int child0; int child1; } ;
typedef  TYPE_1__ CCtsp_PROB_FILE ;

/* Variables and functions */
extern "C" { int CCtsp_prob_putchildren (CCtsp_PROB_FILE *p, int child0, int child1);
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

void write_output(TYPE_1__* p, int child0, int child1, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["child0"] = output_temp_1.child0;

  output_temp_2["child1"] = output_temp_1.child1;
  output_json["p"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__child0 = input_json["p"]["child0"];
  int p_pointer__child1 = input_json["p"]["child1"];
  TYPE_1__ p_pointer = {p_pointer__child0, p_pointer__child1};
  TYPE_1__* p = &p_pointer;
  int child0 = input_json["child0"];
  int child1 = input_json["child1"];
  clock_t begin = clock();
  int returnv = CCtsp_prob_putchildren(p, child0, child1);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, child0, child1, returnv);
}