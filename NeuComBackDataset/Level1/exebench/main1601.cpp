#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct tek_STR_BITMODEL {int t; int m; int prb1; int prb0; int tmsk; int ntm; } ;

/* Variables and functions */
extern "C" { void tek_setbm5(struct tek_STR_BITMODEL *bm, int t, int m);
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

void write_output(struct tek_STR_BITMODEL* bm, int t, int m) {
  json output_json;
  struct tek_STR_BITMODEL output_temp_1 = *bm;
  json output_temp_2;

  output_temp_2["t"] = output_temp_1.t;

  output_temp_2["m"] = output_temp_1.m;

  output_temp_2["prb1"] = output_temp_1.prb1;

  output_temp_2["prb0"] = output_temp_1.prb0;

  output_temp_2["tmsk"] = output_temp_1.tmsk;

  output_temp_2["ntm"] = output_temp_1.ntm;
  output_json["bm"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int bm_pointer__t = input_json["bm"]["t"];
  int bm_pointer__m = input_json["bm"]["m"];
  int bm_pointer__prb1 = input_json["bm"]["prb1"];
  int bm_pointer__prb0 = input_json["bm"]["prb0"];
  int bm_pointer__tmsk = input_json["bm"]["tmsk"];
  int bm_pointer__ntm = input_json["bm"]["ntm"];
  struct tek_STR_BITMODEL bm_pointer = {bm_pointer__t, bm_pointer__m, bm_pointer__prb1, bm_pointer__prb0, bm_pointer__tmsk, bm_pointer__ntm};
  struct tek_STR_BITMODEL* bm = &bm_pointer;
  int t = input_json["t"];
  int m = input_json["m"];
  clock_t begin = clock();
  tek_setbm5(bm, t, m);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(bm, t, m);
}