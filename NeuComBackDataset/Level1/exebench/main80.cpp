#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dyn; } ;
struct VOICE_S {TYPE_1__ posit; } ;

/* Variables and functions */
extern "C" { void set_dyn(struct VOICE_S *p_voice, int val);
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

void write_output(struct VOICE_S* p_voice, int val) {
  json output_json;
  struct VOICE_S output_temp_1 = *p_voice;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["dyn"] = output_temp_1.posit.dyn;
  output_temp_2["posit"] = output_temp_3;
  output_json["p_voice"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_voice_pointer__posit__dyn = input_json["p_voice"]["posit"]["dyn"];
  TYPE_1__ p_voice_pointer__posit = {p_voice_pointer__posit__dyn};
  struct VOICE_S p_voice_pointer = {p_voice_pointer__posit};
  struct VOICE_S* p_voice = &p_voice_pointer;
  int val = input_json["val"];
  clock_t begin = clock();
  set_dyn(p_voice, val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p_voice, val);
}