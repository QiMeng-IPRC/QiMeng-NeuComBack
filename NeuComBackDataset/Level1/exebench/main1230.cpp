#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int losspct; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef  TYPE_2__ jitterbuf ;

/* Variables and functions */
extern "C" { void increment_losspct(jitterbuf *jb);
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

void write_output(TYPE_2__* jb) {
  json output_json;
  TYPE_2__ output_temp_1 = *jb;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["losspct"] = output_temp_1.info.losspct;
  output_temp_2["info"] = output_temp_3;
  output_json["jb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int jb_pointer__info__losspct = input_json["jb"]["info"]["losspct"];
  TYPE_1__ jb_pointer__info = {jb_pointer__info__losspct};
  TYPE_2__ jb_pointer = {jb_pointer__info};
  TYPE_2__* jb = &jb_pointer;
  clock_t begin = clock();
  increment_losspct(jb);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(jb);
}