#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int r; int s; int v; } ;
typedef  TYPE_1__ st ;

/* Variables and functions */
extern  TYPE_1__ inv ; 
extern  int n ; 
extern "C" { st getst(void);
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

void write_output(TYPE_1__ returnv) {
  json output_json;
  json output_temp_1;

  output_temp_1["r"] = inv.r;

  output_temp_1["s"] = inv.s;

  output_temp_1["v"] = inv.v;
  output_json["inv"] = output_temp_1;

  output_json["n"] = n;
  json output_temp_2;

  output_temp_2["r"] = returnv.r;

  output_temp_2["s"] = returnv.s;

  output_temp_2["v"] = returnv.v;
  output_json["returnv"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int inv__r = input_json["inv"]["r"];
  int inv__s = input_json["inv"]["s"];
  int inv__v = input_json["inv"]["v"];
  inv = {inv__r, inv__s, inv__v};
  n = input_json["n"];
  clock_t begin = clock();
  TYPE_1__ returnv = getst();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(returnv);
}