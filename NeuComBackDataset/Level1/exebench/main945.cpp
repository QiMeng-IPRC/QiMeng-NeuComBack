#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double d; int i; } ;
struct TYPE_5__ {char c; TYPE_1__ sdi; } ;
typedef  TYPE_2__ Scsdis ;

/* Variables and functions */
extern "C" { void initScsdis (Scsdis *p, int i);
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

void write_output(TYPE_2__* p, int i) {
  json output_json;
  TYPE_2__ output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["c"] = output_temp_1.c;
  json output_temp_3;

  output_temp_3["d"] = output_temp_1.sdi.d;

  output_temp_3["i"] = output_temp_1.sdi.i;
  output_temp_2["sdi"] = output_temp_3;
  output_json["p"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char p_pointer__c = input_json["p"]["c"].get<char>();
  double p_pointer__sdi__d = input_json["p"]["sdi"]["d"];
  int p_pointer__sdi__i = input_json["p"]["sdi"]["i"];
  TYPE_1__ p_pointer__sdi = {p_pointer__sdi__d, p_pointer__sdi__i};
  TYPE_2__ p_pointer = {p_pointer__c, p_pointer__sdi};
  TYPE_2__* p = &p_pointer;
  int i = input_json["i"];
  clock_t begin = clock();
  initScsdis(p, i);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, i);
}